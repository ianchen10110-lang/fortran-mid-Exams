program sum_to_n
    implicit none
    integer(kind=8) :: n, i, total

    print *, "請輸入正整數 N："
    read *, n

    if (n < 1) then
        print *, "N 必須是正整數"
        stop
    end if

    total = 0
    do i = 1, n
        total = total + i
    end do

    print *, "1 加到", n, "的總和 =", total
end program sum_to_n
