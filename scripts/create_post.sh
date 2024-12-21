echo "# ${{ github.event.issue.title }}" > issues/issue-${{ github.event.issue.number }}.md
echo "" >> issues/issue-${{ github.event.issue.number }}.md
echo "## Descrição" >> issues/issue-${{ github.event.issue.number }}.md
echo "${{ github.event.issue.body }}" >> issues/issue-${{ github.event.issue.number }}.md
echo "" >> issues/issue-${{ github.event.issue.number }}.md
echo "## Autor: ${{ github.event.issue.user.login }}" >> issues/issue-${{ github.event.issue.number }}.md
echo "Issue URL: [${{ github.event.issue.html_url }}](${{ github.event.issue.html_url }})" >> issues/issue-${{ github.event.issue.number }}.md