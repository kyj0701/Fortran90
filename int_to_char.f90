program int_to_char

character*5 k
integer k_int

k_int = 0

read(*,*) k

l = len_trim(k)

!k's type conversion(char to int)
do i = 1,l
    k_int = k_int + (iachar(k(i:i))-48)*10**(l-i)
enddo

write(*,*) k_int

end program int_to_char