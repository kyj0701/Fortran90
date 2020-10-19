program homework3

    integer i, factorial
    real x, result, pre, tol
    
    x = 0.5
    result = 1.0
    pre = 1.0
    tol = 0.0000001


    do i = 1, 10, 1
        result = result + ((-1)**i) * ((x)**(2*i)) / factorial(2*i)
        write(*,"(F9.7)") result
        if (abs(pre - result) < tol) exit
        pre = result
    enddo

    write(*,"(F10.7)") result

end program homework3

integer function factorial(n)
    factorial = 1

    do i = 1, n
        factorial = factorial * i
    enddo

return
end function