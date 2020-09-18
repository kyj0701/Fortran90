program homework2
    integer i,j, num, row, col
    real*8, dimension(:,:), allocatable:: array
    real*8 result

    print *, 'Enter the size(row col) : '
    read *, row, col

    allocate(array(row,col))


    do i = 1, row
        do j = 1, col
            print *, 'Enter (',i,',',j,')th element : '
            read *, num
            array(i,j) = num
        enddo
    enddo

    result = A1norm(array, row)
    ! print *, n, col
    print *, result

    ! write(*,*) array

    deallocate(array)
    contains
    real*8 function A1norm(A, M) result(result)
        implicit none
        real*8 A(M, *)
        real*8 sum
        integer i, j, M

        ! print *, M, col

        sum = 0
        result = 0

        do i = 1, col
            sum = 0
            do j = 1, M
                sum = sum + A(j,i)
            enddo
            if (sum > result) then
                result = sum
            endif
        enddo 

        return
    end function A1norm

end program homework2