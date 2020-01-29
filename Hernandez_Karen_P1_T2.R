#1. A partir de las redes de la figura 1. Calcula con igraph, las siguientes 
#propiedades:
#CARGAR LIBRERIA IGRAPH
#############################FIGURA 1##########################################
####PRIMERO SE HACE LA RED DE LA FIGURA 1 INDICANDO CUANDOS NODOS TENDRÁ
fig1<-make_empty_graph(n=10, directed = FALSE)
#DESPUES SE ESTABLECE COMO VA ESTAR CONECTADA LA RED
fig1<- add.edges(fig1, c(1,2, 1,3, 1,4, 1,5, 1,6, 1,7, 1,8, 1,9, 1,10))
#FINALMENTE SE VISUALIZA LA RED
plot(fig1)
#a) Vecinos
#VER LOS VECINOS DEL NODO 1
v1<- neighbors(fig1, 1)
v1
#VER LOS VECINOS DEL NODO 2 (SE VISUALIZA PARA CADA UNO PERO EN ESTE CASO NO PORQUE TODOS
#LOS NODOS DEL 2 AL 10 ESTAN CONECTADOS CON EL NODO 1)
v2<- neighbors(fig1, 2)
v2
#b) La distribución de conectividades (DEGREE DISTRIBUTION)
plot(degree_distribution(fig1), main="Degree distribution", xlab="Degree", ylab="Frequency")
#c) El nodo más conectado (EN ESTE CASO ES EL NODO 1)
which(degree(fig1)==max(degree(fig1)))
#d) El diámetro (DIAMETRO ES DE 2)
diameter(fig1)
#e) La matriz de distancias y el heatmap asociado.
distancia<-shortest.paths(fig1 ,mode = "in")
distancia
#PARA VERIFICAR QUE SEA UNA MATRIZ
class(distancia)
#HEATMAP
heatmap(distancia)

#############################FIGURA 2##########################################
####PRIMERO SE HACE LA RED DE LA FIGURA 2 INDICANDO CUANDOS NODOS TENDRÁ
fig2<-make_empty_graph(n=10, directed = FALSE)
#DESPUES SE ESTABLECE COMO VA ESTAR CONECTADA LA RED
fig2<- add.edges(fig1, c(1,2, 1,4, 1,8, 1,9, 1,10,2,6, 2,7, 2,9, 2,10, 3,5, 3,7, 3,8, 4,5, 4,6, 4,7, 4,8, 4,9, 5,6, 5,7, 5,8, 6,8, 7,9, 7,10, 8,9, 9,10))
#FINALMENTE SE VISUALIZA LA RED
plot(fig2)
#a) Vecinos
#VER LOS VECINOS DEL NODO 1 hasta el 10
#nodo 1
v1<- neighbors(fig2, 1)
v1
#nodo 2
v2<- neighbors(fig2, 2)
v2
#nodo 3
v3<- neighbors(fig2, 3)
v3
#nodo4
v4<- neighbors(fig2, 4)
v4
#nodo 5
v5<- neighbors(fig2, 5)
v5
#nodo 6
v6<- neighbors(fig2, 6)
v6
#nodo 7
v7<- neighbors(fig2, 7)
v7
#nodo 8
v8<- neighbors(fig2, 8)
v8
#nodo 9
v9<- neighbors(fig2, 9)
v9
#nodo 10
v10<- neighbors(fig2, 10)
v10

#b) La distribución de conectividades (DEGREE DISTRIBUTION)
plot(degree_distribution(fig2), main="Degree distribution", xlab="Degree", ylab="Frequency")
#c) El nodo más conectado (EN ESTE CASO ES EL NODO 1)
which(degree(fig2)==max(degree(fig2)))
#d) El diámetro (DIAMETRO ES DE 2)
diameter(fig2)
#e) La matriz de distancias y el heatmap asociado.
distancia<-shortest.paths(fig2 ,mode = "in")
distancia
#PARA VERIFICAR QUE SEA UNA MATRIZ
class(distancia)
#HEATMAP
heatmap(distancia)
#############################FIGURA 3##########################################
####PRIMERO SE HACE LA RED DE LA FIGURA 1 INDICANDO CUANDOS NODOS TENDRÁ
fig3<-make_empty_graph(n=10, directed = TRUE)
#DESPUES SE ESTABLECE COMO VA ESTAR CONECTADA LA RED
fig3<- add.edges(fig3, c(1,2, 2,3, 3,4, 4,5, 5,6, 6,7, 7,8, 8,9, 9,10, 10,1))
#FINALMENTE SE VISUALIZA LA RED
plot(fig3)
#a) Vecinos
#VER LOS VECINOS DEL NODO 1 al 10
#nodo 1
v1<- neighbors(fig3, 1)
v1
#nodo 2
v2<- neighbors(fig3, 2)
v2
#nodo 3
v3<- neighbors(fig3, 3)
v3
#nodo4
v4<- neighbors(fig3, 4)
v4
#nodo 5
v5<- neighbors(fig3, 5)
v5
#nodo 6
v6<- neighbors(fig3, 6)
v6
#nodo 7
v7<- neighbors(fig3, 7)
v7
#nodo 8
v8<- neighbors(fig3, 8)
v8
#nodo 9
v9<- neighbors(fig3, 9)
v9
#nodo 10
v10<- neighbors(fig3, 10)
v10
#b) La distribución de conectividades (DEGREE DISTRIBUTION)
plot(degree_distribution(fig3), main="Degree distribution", xlab="Degree", ylab="Frequency")
#c) El nodo más conectado (EN ESTE CASO ES EL NODO 1)
which(degree(fig3)==max(degree(fig3)))
#d) El diámetro (DIAMETRO ES DE 2)
diameter(fig3)
#e) La matriz de distancias y el heatmap asociado.
distancia<-shortest.paths(fig3 ,mode = "in")
distancia
#PARA VERIFICAR QUE SEA UNA MATRIZ
class(distancia)
#HEATMAP
heatmap(distancia)
#############################FIGURA 4##########################################
####PRIMERO SE HACE LA RED DE LA FIGURA 1 INDICANDO CUANDOS NODOS TENDRÁ
fig4<-make_empty_graph(n=10, directed = FALSE)
#DESPUES SE ESTABLECE COMO VA ESTAR CONECTADA LA RED
fig4<- add.edges(fig4, c(1,2, 1,3, 1,5, 1,6, 1,8, 2,9, 3,4, 5,7, 5,10))
#FINALMENTE SE VISUALIZA LA RED
plot(fig4)
#a) Vecinos
#VER LOS VECINOS DEL NODO 1
#nodo 1
v1<- neighbors(fig4, 1)
v1
#nodo 2
v2<- neighbors(fig4, 2)
v2
#nodo 3
v3<- neighbors(fig4, 3)
v3
#nodo 4
v4<- neighbors(fig4, 4)
v4
#nodo 5
v5<- neighbors(fig4, 5)
v5
#nodo 6
v6<- neighbors(fig4, 6)
v6
#nodo 7
v7<- neighbors(fig4, 7)
v7
#nodo 8
v8<- neighbors(fig4, 8)
v8
#nodo 9
v9<- neighbors(fig4, 9)
v9
#nodo 10
v10<- neighbors(fig4, 10)
v10
#b) La distribución de conectividades (DEGREE DISTRIBUTION)
plot(degree_distribution(fig4), main="Degree distribution", xlab="Degree", ylab="Frequency")
#c) El nodo más conectado (EN ESTE CASO ES EL NODO 1)
which(degree(fig4)==max(degree(fig4)))
#d) El diámetro (DIAMETRO ES DE 2)
diameter(fig4)
#e) La matriz de distancias y el heatmap asociado.
distancia<-shortest.paths(fig4 ,mode = "in")
distancia
#PARA VERIFICAR QUE SEA UNA MATRIZ
class(distancia)
#HEATMAP
heatmap(distancia)
