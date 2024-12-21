path_post="posts/"
file_name="post-$GITHUB_ISSUE_NUMBER.yaml"
file_path="${path_post}${file_name}"

ls

echo "created: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "" >> ${file_path}

echo "title: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "" >> ${file_path}

echo "description: |" >> ${file_path}
echo "    $GITHUB_ISSUE_BODY" >> ${file_path}
echo "" >> ${file_path}

echo "author: $GITHUB_ISSUE_USER" >> ${file_path}
echo "issue_url: $GITHUB_ISSUE_URL" >> ${file_path} 