#!/bin/bash

echo "Fetching citations with Manubot..."
manubot cite "$@" --format csljson --output _data/citations_temp.json

echo "Converting to clean YAML..."
python3 << 'EOF'
import json

def escape_yaml_string(s):
    if not s:
        return "''"
    s = str(s)
    if any(c in s for c in [':', '\n', '"', "'"]) or s.startswith('-'):
        s = s.replace('"', '\\"')
        return f'"{s}"'
    return s

with open('_data/citations_temp.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

yaml_lines = []
for item in data:
    authors = []
    for a in item.get('author', []):
        given = a.get('given', '')
        family = a.get('family', '')
        if given and family:
            authors.append(f"{given} {family}")
        elif family:
            authors.append(family)
    
    date_parts = item.get('issued', {}).get('date-parts', [[]])[0]
    date = '-'.join(map(str, date_parts)) if date_parts else ''
    
    url = item.get('URL', '')
    if not url and item.get('DOI'):
        url = f"https://doi.org/{item['DOI']}"
    
    # Use DOI as ID (or fallback to manubot ID)
    doi = item.get('DOI', '')
    citation_id = f"doi:{doi}" if doi else item.get('id', '')
    
    yaml_lines.append(f"- id: {citation_id}")
    yaml_lines.append(f"  title: {escape_yaml_string(item.get('title', ''))}")
    
    if authors:
        yaml_lines.append("  authors:")
        for author in authors:
            yaml_lines.append(f"    - {escape_yaml_string(author)}")
    else:
        yaml_lines.append("  authors: []")
    
    yaml_lines.append(f"  publisher: {escape_yaml_string(item.get('container-title', item.get('publisher', '')))}")
    yaml_lines.append(f"  date: {date}")
    yaml_lines.append(f"  link: {url}")
    yaml_lines.append(f"  doi: {doi}")
    yaml_lines.append("")

with open('_data/citations.yaml', 'w', encoding='utf-8') as f:
    f.write('\n'.join(yaml_lines))

print(f"✓ Converted {len(data)} citations with DOI-based IDs")
EOF

rm _data/citations_temp.json
echo "✓ Done! Citations saved to _data/citations.yaml"
