
set nocompatible              " be iMproved, required
filetype off                  " required

set autoindent       " 자동 들여쓰기
set cindent          " C 프로그래밍용 자동 들여쓰기
set smartindent      " 스마트한 들여쓰기
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup         " 백업 파일을 안만듬
set noswapfile
"set visualbell      " 키를 잘못눌렀을 때 화면 프레시
"set ruler            " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
"set shiftwidth=4     " 자동 들여쓰기 4칸
set number           " 행번호 표시, set nu 도 가능
"set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는
"유니코드로
"set fileencoding=utf-8 " 파일저장인코딩
"set tenc=utf-8       " 터미널 인코딩
""set expandtab       " 탭대신 스페이스
set hlsearch         " 검색어 강조, set hls 도 가능
set ignorecase       " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4        " 탭을 4칸으로
set lbr
set incsearch        " 키워드 입력시 점진적 검색
set cursorline       " 편집 위치에 커서 라인 설정
set laststatus=2     " 상태바 표시를 항상한다
syntax on "  구문강조 사용
filetype indent on   " 파일 종류에 따른 구문강조
set background=dark  " 하이라이팅 lihgt / dark
"colorscheme jellybeans  "  vi 색상 테마 설정
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     " vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
set mouse=a          " vim에서 마우스 사용
set t_Co=256         " 색 조정
let g:neocomplcache_enable_at_startup = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctags.vim'
Plugin 'scrooloose/nerdcommenter'

Plugin 'edkolev/promptline.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdtree'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/syntastic'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'nanotech/jellybeans.vim'

Plugin 'kchmck/vim-coffee-script'

Plugin 'neocomplcache'

call vundle#end()            " required



let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }



" 키 맵핑
" <F1> 폴딩
"map <F1> v]}zf
map <F1> :tabnew<cr>
" <F2> 창이동
map <F2> <C-w><C-w>
" <F3> NERDTree
"map <F3> <ESC>:NERDTreeToggle<CR>
map <Leader><Leader>  <ESC>:NERDTreeToggle<CR>

