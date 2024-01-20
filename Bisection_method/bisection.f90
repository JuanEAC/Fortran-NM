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


program FuncionesEnFortran
  implicit none

  ! Programa principal
  real, parameter :: tol = 0.001
  real :: a, b , m , error

  ! Intervalo inicial para evaluación
  a = 0
  b = 3

  do 

    ! Aproximación al punto de la raíz por media de los puntos
    m = (a + b) / 2


    ! Evaluación para la asignación de los nuevos punto del intervalo
    if((objectiveFunction(a) * objectiveFunction(m)) < 0) then
      b = m
    end if

    if((objectiveFunction(a) * objectiveFunction(m)) > 0) then
      a = m
    end if


    ! Cálculo del error porcentual
    error = abs((b - a) / (b + a))

    ! Criterio de finalización de la evaluación
    if(error <= tol) then
      exit
    end if

  end do

  
  print *, "Una raiz aproximada de la funcion es: ", m


  contains
  ! Declaración de la función
  real function objectiveFunction(x)
    real, intent(in) :: x
    objectiveFunction = cos(x)
  end function objectiveFunction

end program FuncionesEnFortran



