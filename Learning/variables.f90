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


PROGRAM QuadraticSolver
    IMPLICIT NONE
  
    REAL :: a, b, discriminant, root1, root2
  
    ! Input coefficients
    WRITE(*,*) 'Enter coefficient a:'
    READ(*,*) a
  
    WRITE(*,*) 'Enter coefficient b:'
    READ(*,*) b
  
    ! Calculate discriminant
    discriminant = b**2 - 4*a
  
    ! Check if roots are real
    IF (discriminant >= 0.0) THEN
      ! Calculate roots
      root1 = (-b + SQRT(discriminant)) / (2*a)
      root2 = (-b - SQRT(discriminant)) / (2*a)
  
      ! Output roots
      WRITE(*,*) 'Root 1:', root1
      WRITE(*,*) 'Root 2:', root2
    ELSE
      WRITE(*,*) 'The roots are complex numbers and cannot be computed in this program.'
    ENDIF
  
  END PROGRAM QuadraticSolver
  