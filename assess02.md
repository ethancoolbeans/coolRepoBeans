#### MC Question
Skill: 15 Writing Classes


What is the format of a class in order?
Options:
1. Initializing fields, methods, constructor, fields  
2. Constructor, initializing fields, methods, display
3. Initializing fields, constructor, display, methods
4. Methods, initializing fields, constructor, display 

Answer: 3

---
#### MC Question:
Skill: 13 Handling events

When does mouseDragged() trigger?

Options:
1. When the mouse coordinates change
2. When the mouse coordinates change while any key is being pressed
3. When the mouse coordinates change while any mouse button is being pressed
4. When the mouse coordinates change while left clicking

Answer: 3

---
#### Programming question: 
Skills: 11, 13

Write ONE method that creates a 50 unit wide circle at the coordinates of the mouse when clicked, with color depending on the last key pressed. If r is pressed then the circle is red, if g is pressed then the circle is green, if b is pressed then the circle is blue.
Possible solution:
\`\`\`
void mousePressed() {
  if (key == 'r') {
    fill(255,0,0);
  }
  else if (key == 'g') {
    fill(0,255,0);
  }
  else if (key == 'b') {
    fill(0,0,255);
  }
  circle(mouseX, mouseY, 50);
}

\`\`\`
