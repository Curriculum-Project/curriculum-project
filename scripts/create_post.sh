path_post=posts/
file_name=${{ github.event.issue.number }}
file_path=${!path_post}${!file_name}.md

echo "# ${{ github.event.issue.title }}" > ${!file_path}
echo "" >> ${!file_path}

echo "## Descrição" >> ${!file_path}
echo "${{ github.event.issue.body }}" >> ${!file_path}
echo "" >> ${!file_path}

echo "## Autor: ${{ github.event.issue.user.login }}" >> ${!file_path}
echo "Issue URL: [${{ github.event.issue.html_url }}](${{ github.event.issue.html_url }})" >> ${!file_path}