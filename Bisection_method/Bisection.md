# Método de la Bisección

En matemáticas, el método de bisección , también llamado dicotomía, es un algoritmo de búsqueda de raíces que trabaja dividiendo el intervalo a la mitad y seleccionando el subintervalo que tiene la raíz.
Se aplica a funciones algebraicas o trascendentes y proporciona unicamente raíces reales.
Según (Chapra,2007) los pasos a seguir son los siguientes:
Paso 1: Elija valores iniciales inferior, $x_l$, y superior, $x_u$, que encierren la raíz, de forma tal que la función cambie de signo en el intervalo. Esto se verifica comprobando que $f(x_l)$ $f(x_u)$ $< 0$
Paso 2: Una aproximación de la raíz $x_r$ se determina mediante:
$$
x_r = \frac{x_l + x_u}{2}
$$
Paso 3: Realice las siguientes evaluaciones para determinar en qué subintervalo está la raíz:
 a) Si $f(x_l)f(x_r) < 0$, entonces la raíz se encuentra dentro del subintervalo inferior o izquierdo. Por lo tanto, haga $x_u = x_r$ y vuelva al paso 2.
 b) Si $f(x_l)f(x_r) > 0$, entonces la raíz se encuentra dentro del subintervalo superior o derecho. Por lo tanto, haga $x_l = x_r$ y vuelva al paso 2.
c) Si $f(x_l)f(x_r) = 0$, la raíz es igual a $x_r$