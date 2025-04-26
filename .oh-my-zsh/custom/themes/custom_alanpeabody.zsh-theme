# Parte do usuário
local user='%{$fg[magenta]%}[%n@%m>%{$reset_color%}'

# Parte do diretório
local pwd='%{$fg[blue]%}%~%{$reset_color%}'

# Parte do ambiente virtual Python (se estiver ativo)
local venv='%{$fg[green]%}$(if [[ -n "$VIRTUAL_ENV" ]]; then echo "($VIRTUAL_ENV)"; fi)%{$reset_color%}'

# Configurações do prompt do git
ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

# Definir o prompt principal
# Linha de cima: usuário
# Linha de baixo: ambiente virtual (se ativo) e diretório
PROMPT="${user}
${pwd} $ "
