#Elabora un programa en R que a partir del archivo de amistades del grupo.
#CARGAR LIBRERIAS BIOSTRINGS IGRAPH
#a) Cargue el archivo
RA<-read.csv("red chida.csv")
RA
#Ver a todos los amigos
row.names<-RA[,1]
row.names
x<-RA[,-1]
x
#ver que sea de clase MATRIZ
x<-as.matrix(x)
class(x)
#ver la red de amigos
red<-graph_from_adjacency_matrix(x, mode ="directed")
plot(red)
#b) Genere el vector de nombres de todos tus amigos (los tuyos)
#para ver a quien consideras tus amigos de todas las personas del salón (muestra cuantos amigos considera cada uno, YO CONSIDERO A 13 PERSONAS MIS AMIGOS)
a1<-degree( red , mode="out")
a1
#este comando muestra a todos en general y a mi seleccionando con 1 o 0 a los que si y no considero mis amigos 
R1<-red[21,]
R1
#este comando muestra solo a los que SI considero mis amigos
R2<-red[21,c(1,2,3,4,6,8,11,12,13,14,16,19,20)]
R2
#c) Genere el vector de nombres de todos los que se consideren tus amigos.
#para ver los que te consideran amigo de todas las personas del salón (muestra cuantos nos consideran amigos de cada uno, A MI me consideran 12 personas como amiga)
a2<-degree(red, mode="in")
a2
#este comando muestra a todas las personas que me consideran o no su amiga con 1 o 0
R3<-red[,21]
R3
#este comando muestra solo los que SI me consideran amiga
R2<-red [c(1,2,4,6,8,11,12,13,14,16,18,20),]
R2
#d) Imprima el texto: "Hola amigo1", en donde amigo1 es el nombre de cada uno de tus amigos.