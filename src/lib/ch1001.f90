program ch1001
implicit none
integer, parameter :: npeople = 10
integer, dimension (1:npeople) :: height_feet, &
height_inch, weight_stone, weight_pound
real, dimension (1:npeople) :: weight_kg, &
height_m
integer :: i
character *99 :: fpath, fpath_raw

call GET_COMMAND_ARGUMENT(1, fpath_raw)

open (unit=10, file = fpath_raw)
do i = 1, npeople
read (10, fmt=100) height_feet(i), &
height_inch(i), weight_stone(i), &
weight_pound(i)
100 format (i2, 2x, i2, 2x, i2, 2x, i2)
weight_kg(i) = (weight_stone(i)*14+ &
weight_pound(i))/2.2
height_m(i) = (height_feet(i)*12+height_inch &
(i))*2.54/100
write (unit=*, fmt=110) height_m(i), &
weight_kg(i)
110 format (1x, f5.2, 2x, f4.1)
end do
close (10)
end program ch1001
