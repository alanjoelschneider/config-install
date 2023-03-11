" Removes all spaces and tabs from the end
command TrimEnd :%s/[[:space:]]*$// | :nohl | update
" Removes all empty lines from the end of the file"
command TrimExtraLines :%s/\n*\%$// | :nohl | update
