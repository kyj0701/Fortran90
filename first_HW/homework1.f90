program prime_palin

integer j, max, reverse
logical prime(10000)

max = 10000
do i = 1, max
    prime(i) = .TRUE.
enddo

do i = 2, max
    if (prime(i).EQV..TRUE.) then
        j = 2
        do while(i*j <= max)
            prime(i*j) = .FALSE.
            j = j+1
        enddo
    endif
enddo

do i = 2, max
    if (prime(i) .EQV. .TRUE.) then
        reverse = 0
        j = i
        if (mod(j,10) == 0 .and. j /= 0) prime(i) = .FALSE.

        do while(j > reverse)
            reverse = mod(j,10) + (reverse * 10)
            j = j/10
        enddo

        prime(i) = ((j == reverse) .or. (j == reverse/10)) 
    endif
enddo

do i = 2, max
    if(prime(i).eqv..TRUE.) write(*,*) i
enddo

end program prime_palin