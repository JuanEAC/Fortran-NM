# LU - Factorización

La factorización LU de una matriz es una factorización que resume el proceso de eliminación gausiana aplicado a la matriz y que es conveniente en términos del número total de operacionesde punto flotante cuando se desea calcular la inversa de una matriz o cuando se resolverá una serie de sistemas de ecuaciones con una misma matriz de coeficientes. (Torres S., Villalobos C., 2015).
Este método es muy adecuado para aquellas situaciones donde se deben evaluar muchos vectores {B} del lado derecho para un solo valor de [A]. (Chapra, 2007)

En esta implementación se abordará la descomposición LU utilizando el método de Crout. Este método genera [U] y [L] barriendo las columnas y los renglones de la matriz y se puede implementar utilizando la siguiente serie de fórmulas:
\[
l_{i1} = a_{i1} \quad \text{para } i = 1,2,...,n
\]

\[
u_{1j} = \dfrac{a_{1j}}{l_{11}} \quad \text{para } i = 2,3,...,n
\]

\[
\text{para } j = 2,3,...,n-1
\]

\[
l_{ij} = a_{ij} - \sum_{k=1}^{j-1} l_{ik}u_{kj} \quad \text{para } i = j,j+1,...,n
\]

\[
u_{jk} = \dfrac{a_{jk} - \sum_{i=1}^{j-1} l_{ji}u_{ik}}{l_{jj}} \quad \text{para } k = j+1,j+2,...,n
\]

\[
l_{nn} =  a_{nn} - \sum_{k=1}^{n-1} l_{nk}u_{kn}
\]








