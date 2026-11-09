! 定義主程式：計算 1 到 N 的整數總和
program sum_1_to_n
  ! 強制宣告變數，避免拼字錯誤導致隱含型別
  implicit none
  ! 宣告 64 位元整數：輸入上限、迴圈計數器與累加總和
  integer(kind=8) :: n, i, total
  ! 顯示輸入提示
  print *, 'Enter a positive integer N:'
  ! 從鍵盤讀取 N
  read(*,*) n
  ! 限制 N 為正整數並防止總和超過 64 位元有號整數範圍
  if (n < 1 .or. n > 4294967295_8) then
    ! 輸入不符合範圍時顯示錯誤訊息
    print *, 'Error: N must be between 1 and 4294967295.'
    ! 以非零狀態碼結束程式
    stop 1
  ! 結束條件判斷
  end if
  ! 將總和初始化為零
  total = 0_8
  ! 從 1 逐次加到 N
  do i = 1_8, n
    ! 累加目前整數 i
    total = total + i
  ! 結束迴圈
  end do
  ! 印出 N 和累加結果
  print '(A,I0,A,I0)', 'Sum from 1 to ', n, ' = ', total
! 結束主程式
end program sum_1_to_n
