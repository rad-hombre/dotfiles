"NAME: commentz.vim

"DESCRIPTION:
    "A little vimscript to make commenting a little less painful
    "Because source code is meant to be readable for people, not machines. 
    "Programs should be written for people to read, and only incidentally 
    "for machines to execute.
"AUTHOR:
    "Xxerro <Matthew Orndoff> 

"TODO:
    "Map this function to a keystoke 
    "Set a fixed width (around 80chars) for this stuff so it doesn't 
    "   wrap around strangely. 
    "Get logic for determining filetype working on global scope


"-----------------------------------------------------------------------------
" Find out what filetype were dealing with 
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"This function prompts the user for information and flushes out a 
"pretty function definition
"-----------------------------------------------------------------------------

function! Def()

    "Definitely must be a better way of doing this
    if &filetype == "php" || &filetype == "cpp"
        let comseq = "//"
    elseif &filetype == "vim"
        let comseq = '"'
    else
        let comseq = "#" 
    endif

    let date = strftime("%c")
    let name = input('Enter Function Name: ')
    let description = input('Enter Function Description: ')


    " Maps out the body of the comment 
    " Backslashes are to keep code at manageable width
    exe "normal o" . comseq . 
    \ "=== FUNCTION ================================================================\<Esc>"

    exe "normal o" . comseq . "        NAME: " . name"\<Esc>"
    exe "normal o" . comseq . " DESCRIPTION: " . description"\<Esc>"
    exe "normal o" . comseq . "     CREATED: " . date . " / " . "AUTHOR: " . 
    \ "xxerro <Matthew Orndoff>\<Esc>"

    exe "normal o" . comseq . 
    \ "=============================================================================\<Esc>"



endfunction

"-----------------------------------------------------------------------------
"This function creates a comment that stands out, 
"but isn't as intrusive-looking as a function definition
"-----------------------------------------------------------------------------

function! What()

    "Definitely must be a better way of doing this
    if &filetype == "php" || &filetype == "cpp"
        let comseq = "//"
    elseif &filetype == "vim"
        let comseq = '"'
    else
        let comseq = "#" 
    endif

    let what = input('Enter what is going on here: ')

    " Maps out the body of the comment 
    exe "normal o" . comseq . 
    \"-----------------------------------------------------------------------------\<Esc>"
    exe "normal o" . comseq . " " . what"\<Esc>"
    exe "normal o" . comseq . 
    \"-----------------------------------------------------------------------------\<Esc>"

endfunction

