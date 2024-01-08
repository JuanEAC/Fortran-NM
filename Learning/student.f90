! Variables lesson

! Integers:
! INTEGER :: i, j, k

! Reals:
! REAL :: x, y, z

! Complex numbers:
! COMPLEX :: c1, c2, c3

! Logical values:
! LOGICAL :: flag1, flag2, flag3

! Character strings:
! CHARACTER(len=20) :: name, surname

! Arrays:
! INTEGER, DIMENSION(3) :: array1
! REAL, DIMENSION(2, 3) :: matrix1

! Pointers:
! REAL, POINTER :: ptr

! Dynamic arrays:
! REAL, ALLOCATABLE :: dyn_array(:)

program studentType
    implicit none

    type student
        character (len = 10) :: name
        character (len = 10) :: l_name
        integer :: age
        character (len = 10) :: gender
    end type student

    type (student) :: std1, std2

    print *, "Enter globally the student's data: "
    read *, std1
    print *, "Tu nombre es: ", std1%name, std1%l_name, "y tienes: ", std1%age

    print *, "Enter the name of the second student: "
    read *, std2%name
    print *, std2%name


    
end program studentType