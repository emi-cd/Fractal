// How many times this figure moves.
int MAX = 6;

// Size of figure.
int SIZE = (int)Math.pow(3, 6);
int state = 0;

void setup() {
  size(749, 749);
}

void draw() {
  background(255);

  // Base square
  fill(0);
  // stroke(255);
  rect(10, 10, SIZE, SIZE);

  dig();
    
}

void mousePressed() {
  state = state < MAX ? state+1 : MAX;
}

void dig(){
  
  for(int tmpState = state; tmpState > 0; tmpState--){
    // Draw each state.
    int _standard = (int)(SIZE / (int)Math.pow(3, tmpState) );
    for(int i = 0; i < SIZE/_standard ; i++) {
      for(int j = 0; j < SIZE/_standard ; j++){
        // Conditions
        if((i%2 == 1 && j%2 == 0) || (i%2 == 0 && j%2 == 1)){
          fill(255);
          rect(i*_standard+10, j*_standard+10, _standard, _standard);
        }
      }
    }
  
  }
  
}