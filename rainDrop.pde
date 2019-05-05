public class rainDrop{
  private PVector pos = new PVector();
  private PVector dir = new PVector();
  private PVector[] history = new PVector[5];
  private float r;
  
  public rainDrop(){
    pos.set(random(0, width*4), random(0, height));
    dir.x = random(-5, -10);
    dir.y = 5;
    r = random(1, 5);
    populateHistory();
  }
  
  public void populateHistory(){
    for(int i = 0; i < history.length; i++){
      history[i] = pos; 
    }
  }
  
  public void showHistory(){
    for(PVector v : history){
      ellipse(v.x, v.y, r*2, r*2);
    }
  }
  
  public void updateHistory(){
    for(int i = history.length-1; i > 1; i--){
      history[i] = history[i-1];
    }
    history[0] = pos;
  }
  
  public void show(){
    stroke(51, 51, 200);
    fill(51, 51, 200);
        
    showHistory();
    updateHistory();
    
    pos = pos.add(dir);
    
    if(pos.x < 0 || pos.x > width*4 || pos.y < -11 || pos.y > height){
      pos.set(random(0, width*4), -10);
    }
  }
}
