#

month_num=$(date +%m)
month=$(expr $month_num % 2)
if [ $month -eq 0 ]; then
    curl -fsSL https://hg.mozilla.org/mozilla-unified/bookmarks | perl -ne 'printf("%s\n", $&) if /esr(\d+)/' | head -n1
else
    echo 'release'
fi
