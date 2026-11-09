program sum_1_to_n
  implicit none
  integer(kind=8) :: n, i, total
  print *, 'Enter a positive integer N:'
  read(*,*) n
  if (n < 1 .or. n > 4294967295_8) then
    print *, 'Error: N must be between 1 and 4294967295.'
    stop 1
  end if
  total = 0_8
  do i = 1_8, n
    total = total + i
  end do
  print '(A,I0,A,I0)', 'Sum from 1 to ', n, ' = ', total
end program sum_1_to_n
