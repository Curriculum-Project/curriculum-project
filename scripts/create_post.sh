path_post="_posts/"
file_date=expr substr $GITHUB_ISSUE_CREATED_AT 0 10
file_name="{$file_date}-post.md"
file_path="${path_post}${file_name}"

echo "---" >> ${file_path}
echo "layout: post" >> ${file_path}
echo "title: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "date: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "author: $GITHUB_ISSUE_USER" >> ${file_path}
# echo "url: $GITHUB_ISSUE_URL" >> ${file_path} 
echo "---" >> ${file_path}
echo "$GITHUB_ISSUE_BODY" >> ${file_path}

