program palindrome
    
    character*5 k
    integer c,j
    
    c = 0
    j = 1
    read(*,*) k

    l = len_trim(k)
    m = l / 2

    do while (j <= m .and. k(j:j) == k(l+1-j:l+1-j))
        c = c + 1
        j = j + 1
    enddo

    if (c == m) then
        write(*,*) "This is Palindrom"
    else
        write(*,*) "This is Not Palindrom"
    endif

end program palindrome