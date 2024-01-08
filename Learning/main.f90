program hello
    implicit none

    ! Variable declaration 
    character :: user_name*10 !  

    print *, "Please introduce your name"  ! Text printing (Similar to printf in C)
    read *, user_name ! Username assignment (Similar to scanf function in C)
    print *, "Your name is ", user_name

end program hello