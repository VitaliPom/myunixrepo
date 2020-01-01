set timeoutlen=1000 ttimeoutlen=0
set clipboard=unnamed
set whichwrap+=<,>,[,]
set bs=2
set showmode
set history=1000
set number
set mouse=a
if version >= 703
    set relativenumber  
endif
" colo darkblue
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set cindent
"hilight last inserted text
nnoremap gv `[v`]$
set scrolloff=99
set wildmenu
set showmatch           " match brackets
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldmethod=indent
set foldenable!


fun! ShowFuncName()
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bWn'))
  echohl None
endfun
set laststatus=2
set stl=%!ShowFuncName()


imap "" ""<Left>
imap '' ''<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>


color dracula

execute pathogen#infect()

"Turn on backup option
set backup

"Where to store backups
set backupdir=~/.vim/backup//

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")


let w:mouseToggled = 0
function MouseToggle()
    if(!w:mouseToggled)
        set scrolloff=0
"        set mouse=a    
    elseif(w:mouseToggled)
        set scrolloff=99
"       set mouse=v
    endif
    let w:mouseToggled = !w:mouseToggled
endfunction

nmap m :call MouseToggle()<CR>

function MouseToggleOn()
    if(!w:mouseToggled)
        set scrolloff=0
        let w:mouseToggled = !w:mouseToggled
    endif
endfunction                                
   
map <ScrollWheelUp> :call MouseToggleOn()<CR>k
map <ScrollWheelDown> :call MouseToggleOn()<CR>j


let w:numbers = 1
function Nu()
    if(!w:numbers)
        set relativenumber
    elseif(w:numbers)
        set nu
    endif
    let w:numbers = !w:numbers
endfunction

command! NN call Nu()

nmap e :e

filetype plugin on


map <A-Left> <ESC>b
map <A-Right> <ESC>w


nmap <Bs> <Left><Del>i



noremap! <S-Insert> <C-R>+
nnoremap <S-Insert> "+gP
snoremap <S-Insert> <Esc>gvc<C-R>+
xnoremap <S-Insert> c<C-R>+<Esc>


imap <A-BS> <c-w>
nmap <A-BS> i<c-w>
