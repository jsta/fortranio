program ch1001
implicit none

character *99 :: fpath, fpath_raw
integer :: fpath_length

call GET_COMMAND_ARGUMENT(1, fpath_raw)
fpath_length = len_trim(fpath_raw)
print 100, adjustl(trim(fpath_raw(1:)))

100 format(a)

end program ch1001
