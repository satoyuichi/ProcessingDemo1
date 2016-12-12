void setup() {
  fullScreen();
  background(32);
}

void draw() {
  blendMode(SUBTRACT);
  
  float positionX = random(width);
  float positionY = random(height);
  float radius = random(13.0f, 89.0f);
  // 1 1 2 3 5 8 13 21 34 55 89 144
  float r = random(13.0f, 55.0f);
  float g = random(13.0f, 55.0f);
  float b = random(13.0f, 55.0f);
  float a = random(89.0f, 128.0f);

  stroke(r, g, b, a);
  fill(r, g, b, a);
  ellipse(positionX, positionY, radius, radius);
}

void mouseMoved() {
  float positionX1, positionY1, positionX2, positionY2, offset;
  
  float centerOffset = random(55.0f, 144.0f) - 22.5f;
  float centerX = width * 0.5f + centerOffset;
  float centerY = height * 0.5f + centerOffset;
  
  positionX1 = cos(degrees(random(0.0f, 360.0f)));
  positionY1 = sin(degrees(random(0.0f, 360.0f)));
  positionX2 = -positionX1;
  positionY2 = -positionY1;
  
  offset = random(mouseX, mouseY);
  
  float r = random(255.0f);
  float g = random(196.0f);
  float b = random(196.0f);
  float a = noise(mouseY) * 64.0f;

  blendMode(ADD);
  stroke(r, g, b, a);
  strokeWeight(random(13.0f) + 1.0f);  
  line(
    (positionX1) * offset + centerX,
    (positionY1) * offset + centerY,
    (positionX2) * offset + centerX,
    (positionY2) * offset + centerY
    );
}