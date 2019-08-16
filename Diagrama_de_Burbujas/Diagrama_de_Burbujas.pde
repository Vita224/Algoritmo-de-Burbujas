int[] array = new int[10]; //Cantidad de barras que se crearan
void setup() {
  size(700, 700);
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(100); //Aqui es donde provoca que la altura sea aleatoria
  }  
  frameRate(.7); //Velocidad de ordenamiento
}

int i=0;
int temp;
void draw() {
  background(200);
  textSize(25);
  fill(0);
  text("Algoritmo Burbuja",240,200);

  for (int j=0; j<array.length; j++) { //Creacion de barras
    if (array[i]<array[j]) { //Ordenamiento de barras
      temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    fill(#48FF86);
    rect(50*j+100, j+350, 45, array[j]-100); //Medida de las barras
    fill(0);
    textSize(12);
    text(100-array[j], j*50+115, 363+j);
  }
  i++;  
  if (i>array.length-1)
    noLoop();
}
