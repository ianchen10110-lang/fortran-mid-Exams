! 程式名稱：sum_to_n，計算 1 加到 N 的總和
program sum_to_n
    ! 不允許隱含型別，所有變數都必須先宣告
    implicit none
    ! 宣告三個 64 位元整數：n 為使用者輸入、i 為迴圈計數、total 為累加總和
    integer(kind=8) :: n, i, total

    ! 顯示提示文字，請使用者輸入 N
    print *, "請輸入正整數 N："
    ! 從鍵盤讀入 N 的值
    read *, n

    ! 檢查輸入是否小於 1
    if (n < 1) then
        ! 輸入不合法時顯示錯誤訊息
        print *, "N 必須是正整數"
        ! 結束程式
        stop
    end if

    ! 將總和初始化為 0
    total = 0
    ! 迴圈：讓 i 從 1 依序執行到 n
    do i = 1, n
        ! 把目前的 i 加進總和
        total = total + i
    end do

    ! 輸出計算結果
    print *, "1 加到", n, "的總和 =", total
end program sum_to_n
