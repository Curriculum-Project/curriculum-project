path_post="posts/"
file_name="post-${{ github.event.issue.number }}.yaml"
file_path="${path_post}${file_name}"

echo "created: ${{ github.event.issue.created_at }}" >> ${!file_path}
echo "" >> ${!file_path}

echo "title:" > ${!file_name}
echo "" >> ${!file_path}

echo "description: |" >> ${!file_path}
echo "    ${{ github.event.issue.body }}" >> ${!file_path}
echo "" >> ${!file_path}

echo "author: ${{ github.event.issue.user.login }}" >> ${!file_path}
echo "issue_url: ${{ github.event.issue.html_url }}" >> ${!file_path} 