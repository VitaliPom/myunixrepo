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
nnoremap gV `[v`]$
set scrolloff=99
set wildmenu
set showmatch           " match brackets
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldmethod=indent
set foldenable!

function WhatFunctionAreWeIn()
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


set stl=%!WhatFunctionAreWeIn()
set laststatus=2

imap "" ""<Left>
imap '' ''<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>

colo PaperColor
