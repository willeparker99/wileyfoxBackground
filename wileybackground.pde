color bg = color(100, 100, 100, 0.2);
rainDrop rain [] = new rainDrop[100];

void setup(){
  size(1080, 1920);
  background(100, 100, 100);
  for(int i = 0; i < rain.length; i++){
    rain[i] = new rainDrop();  
  }
}

void draw(){
  background(bg);
  for(rainDrop r : rain){
    r.show();
  }
}
