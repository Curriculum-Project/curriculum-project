path_post="_profissional-experience/"
file_name="experience-$GITHUB_ISSUE_NUMBER.yaml"
file_path="${path_post}${file_name}"

echo "created: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "" >> ${file_path}

echo "nome_empresa: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "" >> ${file_path}

"$GITHUB_ISSUE_BODY"
