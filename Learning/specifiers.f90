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

PROGRAM PrintExamples
    IMPLICIT NONE
  
    INTEGER :: num
    REAL :: real_num
    CHARACTER(10) :: text
    LOGICAL :: flag
  
    ! Ejemplo 1: Entero con ancho de campo de 5
    num = 123
    PRINT '(I5)', num
  
    ! Ejemplo 2: Número real con ancho de campo total de 8 y 2 dígitos después del punto decimal
    real_num = 123.456
    PRINT '(F8.2)', real_num
  
    ! Ejemplo 3: Texto con ancho de campo de 10 caracteres
    text = 'Fortran'
    PRINT '(A)', text
  
    ! Ejemplo 4: Valor lógico con ancho de campo de 1
    flag = .TRUE.
    PRINT '(L1)', flag
  
  
  END PROGRAM PrintExamples
  