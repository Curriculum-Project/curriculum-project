path_post=posts/

last_post_name=${{ github.event.issue.changes.title.from }}
last_post_path=${!path_post}${!last_post_name}.yaml

file_name=${{ github.event.issue.number }}
file_path=${!path_post}${!file_name}.yaml

mv ${!last_post_path} ${!file_path}

echo "Criado em: ${{ github.event.issue.created_at }}" >> ${!file_path}
echo "" >> ${!file_path}
echo "Atualizado em: ${{ github.event.issue.updated_at }}" >> ${!file_path}
echo "" >> ${!file_path}

echo "# ${{ github.event.issue.title }}" > ${!file_path}
echo "" >> ${!file_path}

echo "## Descrição" >> ${!file_path}
echo "${{ github.event.issue.body }}" >> ${!file_path}
echo "" >> ${!file_path}

echo "## Autor: ${{ github.event.issue.user.login }}" >> ${!file_path}
echo "Issue URL: [${{ github.event.issue.html_url }}](${{ github.event.issue.html_url }})" >> ${!file_path}