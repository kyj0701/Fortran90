program sum_of_col

    real*8 A(3,4)
    integer i, j, num
    real*8 max, sum
    sum = 0

    num = 1

    do j = 1, 4
        do i = 1, 3
            A(i,j) = num
            num = num + 1
        enddo
    enddo

    write(*,*) size(A)

    do i = 1, 3
        write(*,*) A(i,1)
    enddo

    do j = 1, 4
        do i = 1, 2
            sum = sum + A(i,j)
        enddo
        if (sum > max) then
            max = sum
            write(*,*) max
        endif
        sum = 0
    enddo

    


end program sum_of_col