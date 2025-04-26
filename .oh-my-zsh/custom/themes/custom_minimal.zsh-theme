PROMPT=' %B%{%F{#bb00ff}%}%~%{$reset_color%}%b%f %{$fg[red]%}»%{$reset_color%} '
RPROMPT='%{$fg[yellow]%}$(git branch 2>/dev/null | grep \* | sed "s/* //")%{$reset_color%}'
