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


program binarySearch
  implicit none

  ! Programa principal
  ! Declaración de variables
  INTEGER, parameter :: array_length = 10
  REAL, DIMENSION(array_length) :: array
  REAL :: middle_point
  REAL :: l_value, u_value, target, i_cont


  ! Inicialización arreglo con caso de búsqueda
  array = [0.0,2.0,4.0,5.0,6.0,7.0,8.0,9.0,13.0,27.5]

  l_value = array(1)
  u_value =  array(array_length)
  target = 27.5

  ! Implementación de búsqueda binaria
  do

    middle_point = NINT(l_value + u_value) / 2.0

    print *, l_value,u_value

    if ( middle_point .eq. target ) then
      exit
    end if
    
    if ( middle_point .le. target ) then
      l_value = middle_point
    end if
    
    if ( middle_point .ge. target ) then
      u_value = middle_point
    end if
    i_cont = i_cont + 1
  end do

  print *, middle_point, i_cont

end program binarySearch




