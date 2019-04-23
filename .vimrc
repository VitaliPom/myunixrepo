set noeb vb t_vb=
set timeoutlen=1000 ttimeoutlen=0
set whichwrap+=<,>,[,]
nmap <BS> <Left><Del>i
set clipboard=unnamed
set bs=2
set showmode
set history=1000
set number
set mouse=v
if version >= 703
    set relativenumber
endif
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


function GetInsideFunction()
  let strList = ["while", "foreach", "ifelse", "if else", "for", "if", "else", "try", "catch", "case", "switch"]
  let foundcontrol = 1
  let position = ""
  let pos=getpos(".")          " This saves the cursor position
  let view=winsaveview()       " This saves the window view
  while (foundcontrol)
    let foundcontrol = 0
    normal [{
    call search('\S','bW')
    let tempchar = getline(".")[col(".") - 1]
    if (match(tempchar, ")") >=0 )
      normal %
      call search('\S','bW')
    endif
    let tempstring = getline(".")
    for item in strList
      if( match(tempstring,item) >= 0 )
        let position = item . " - " . position
        let foundcontrol = 1
        break
      endif
    endfor
    if(foundcontrol == 0)
      call cursor(pos)
      call winrestview(view)
      return tempstring.position
    endif
  endwhile
  call cursor(pos)
  call winrestview(view)
  return tempstring.position
endfunction


set stl=%!GetInsideFunction()
set laststatus=2

imap "" ""<Left>
imap '' ''<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>

colo PaperColor

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/vim-multiple-cursors/autoload/multiple_cursors.vim
let g:multi_cursor_use_default_mapping=1

" Default mapping
let g:multi_cursor_select_all_key      = 'gn'

let w:mouseToggled = 0
function MouseToggle() 
    if(!w:mouseToggled)
        set scrolloff=0
        set mouse=a    
    elseif(w:mouseToggled)
        set scrolloff=99
        set mouse=v
    endif
    let w:mouseToggled = !w:mouseToggled
     
endfunction

nmap m :call MouseToggle()<CR>

"Turn on backup option
set backup

"Where to store backups
set backupdir=~/.vim/backup//

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

nmap c ci

let w:numbers = 1 
function Nu()
    if(!w:numbers)
        set relativen
    elseif(w:numbers)
        set nu
    endif
    let w:numbers = !
endfunction

command! NN call Nu()
