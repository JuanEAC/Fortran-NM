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


PROGRAM matrizExample

  IMPLICIT NONE
  INTEGER , parameter :: row = 4, cols = 4
  INTEGER :: i_row, i_cols, k
  REAL(kind = 4) :: A_matx(row,cols), L_matx(row,cols), U_matx(row,cols), suma
  ! Nota: Los elementos enfilados representa una columna de la matriz
  A_matx = reshape([ 3.0, -1.0, 2.0, 7.0, -1.0, -1.0, 3.0, 1.0, 4.0, 3.0, -1.0, 1.0, -1.0, 1.0, -1.0, 2.0], [row, cols])

  ! Inicialización de la matriz U y L
  DO i_row = 1, row
    DO i_cols = 1, cols
      L_matx(i_row,i_cols) = 0.0
      U_matx(i_row,i_cols) = 0.0
    end DO
  end DO

  DO i_row = 1, row
    DO i_cols = 1, cols

      if (i_cols == 1) then
        L_matx(i_row, i_cols) = A_matx(i_row, i_cols)
      end if

      if (i_row == 1) then
        U_matx(i_row,i_cols) = A_matx(i_row,i_cols) / L_matx(1,1)
      end if
      
      
      if (i_row == i_cols) then
        U_matx(i_row,i_cols) = 1
      end if

      ! Para J = 2,3,...,n
      if (i_cols >= 2 .and. i_cols <= cols - 1) then
        !para i = j, j + 1,..., n
        if(i_row >= i_cols .and. i_row <= cols) then
          suma = 0
          DO k = 1, i_cols - 1
            suma = L_matx(i_row, k) * U_matx(k,i_cols) + suma
          END DO
          L_matx(i_row,i_cols) = A_matx(i_row,i_cols) - suma
        end if 

        ! Para i = j+1,j+2,..., n
        if( i_row >= i_cols + 1 .and. i_row <= cols ) then
          suma = 0
          DO k = 1, i_cols - 1
            suma = L_matx(i_cols, k) * U_matx(k,i_row) + suma
          END DO
          U_matx(i_cols,i_row) = (A_matx(i_cols,i_row) - suma) / L_matx(i_cols, i_cols)
        end if 
  
      end if    
    end DO
  end DO

  suma = 0
  DO k = 1, i_row - 1
    suma = L_matx(cols, k) * U_matx(k,cols) + suma
  END DO
  L_matx(cols,cols) = A_matx(cols,cols) - suma


  print *, "Matriz L", L_matx
  print *, "Matriz U", U_matx

END PROGRAM matrizExample
  

! SUBROUTINE INPUT(X, Y, Z)
!   REAL X,Y,Z
!   PRINT *,'ENTER THREE NUMBERS => '
! READ *,X,Y,Z
! RETURN
! END