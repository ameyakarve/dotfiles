function NOW
  date +%Y%m%d%H%M%S $argv;
end

function ccat
  cat $argv | pygmentize -g -f terminal256 $argv;
end

function i
  find * . | percol --match-method regex | awk '{print }' | xargs  $argv;
end

function mkdir
  command mkdir -pv $argv;
end