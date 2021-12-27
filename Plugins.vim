"Ibrahima's Neovim Config
" ##  Plugins
"
" Plugins are managed by vim-plug, make sure you use single quotes

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   "autocmd VimEnter * PlugInstall
   "autocmd VimEnter * PlugInstall | source $MYVIMRC
 endif
 
call plug#begin('~/.config/nvim/autoload/plugged')
 
" NERDTree: directory tree viewer
"
Plug 'scrooloose/nerdtree'
"
"let NERDTreeChDirMode=2                                                                                                                                            
"let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
"let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
"let NERDTreeShowBookmarks=0
"let NERDTreeCaseSensitiveSort = 1
"
"map <F9> :NERDTreeToggle <CR>

" UltiSnips: snippets engine
"
" Use ultisnips if your Vim has Python support,
" otherwise you can use SnipMate ('garbas/vim-snipmate').
 "
 34 Plug 'roxma/nvim-completion-manager'
 35 Plug 'SirVer/ultisnips'
 36 Plug 'honza/vim-snippets'
 37 "
 38 "let g:UltiSnipsEditSplit='vertical'
 39 "let g:UltiSnipsExpandTrigger           = '<tab>'
 40 "let g:UltiSnipsJumpForwardTrigger      = '<tab>'
 41 "let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
 42 "
 43 "nnoremap <Leader>se :UltiSnipsEdit<cr>
 44 
 45 " Supertab: enhanced tab behavior based on context
 46 "
 47 Plug 'ervandew/supertab'
 48 "
 49 " make YCM compatible with UltiSnips (using supertab)
 50 "let g:SuperTabDefaultCompletionType    = '<C-n>'
 51 "let g:SuperTabCrMapping                = 0
 52 
 53 " Syntastic: syntax checking
 54 "
 55 Plug 'scrooloose/syntastic'
 56 "
 57 "set statusline+=%#warningmsg#
 58 "set statusline+=%{SyntasticStatuslineFlag()}
 59 "set statusline+=%*
 60 "let g:syntastic_always_populate_loc_list = 1
 61 "let g:syntastic_auto_loc_list = 1
 62 "let g:syntastic_check_on_open = 1
 63 "let g:syntastic_check_on_wq = 1
 64 "let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
 65 "let g:syntastic_mode_map = {   
 "       \ "mode": "active",
 67  "   \ "active_filetypes": ["py", "go"],
 68 "       \ "passive_filetypes": [] }
 69 "
 70 "map <Leader>s :SyntasticCheck <CR>
 71 "map <Leader>t :SyntasticToggleMode <CR>
 72 "
 73 "
 74 " Python Linter
 75 "let g:syntastic_python_checkers = ['pyflakes', 'pep8']
 76 "
 77 
 78 " NERD Commenter:
 79 "
 80 Plug 'scrooloose/nerdcommenter'
 81 "
 82 "map <Leader>/ ,ccj
 83 
 84 " Git:
 85 "
 86 Plug 'tpope/vim-fugitive'
 87 
 88 "Python Integration
 89 let g:python3_host_prog = '/path/to/python3'
 90 
 91 "Vim-airline
 92 "
 93 Plug 'vim-airline/vim-airline'
 94 "
 95 "Vim-jedi: Python autocompletion
 96 Plug 'davidhalter/jedi-vim'
 97                                
 " Add plugins to &runtimepath
 99 
100 "Vim plug help
101 Plug 'junegunn/vim-plug'
102 
103 "Vim tagbar
104 Plug 'preservim/tagbar'
105 
106 "Neomake
107 Plug 'benekastah/neomake', has('nvim') ? {} : { 'on': [] }
108 
109 
110 call plug#end()  
