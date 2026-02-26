#import "@preview/touying:0.6.1": *

#import themes.simple: *

#show: simple-theme.with(
  
)

#set text(font: "Source Sans Pro")

#title-slide[
  #text(size: 1.2em, weight: "bold")[Duckify]
  
  _304.1 Gen AI and robot control_
]
== Steps

=== 3D Modelling / Printing (Alexandre)

- Design simpler prototype models
- Choose duck model
- Design supports (duck + pens) #emoji.face.fear

---

=== Design / GenAI (Kevin & Marco)
+ Create some pattern textures (SVG)
+ Maintain a pattern database containing all texture variants for each model part
+ *1#super[st] step*: choose patterns with colors from database (keywords) : use an LLM that has access to our database information to select according to the client need
+ In fine: LLM generates front/top/side textures (to give to the *mapping* group)

---

=== Mapping (Jeremy & Louis)

+ (Texture Projection)
+ Color separation
+ Topological separation
+ Contour & filling
+ Ordering
+ Output

---

=== Robot Arm (Cédric & $pi$ & Nathan)

- Library exploration
- Integration of physical objects in simulation
- Spacial calibration
- Tool grabbing
- Drawing
  - 2D line
  - 3D line on simple shape
  - 3D line on complex shape
- Full pipeline integration

---

=== Interface (Kevin & Alexandre)

+ Create a website _(local or public ?)_ for the client:
  - The user would be able to select a duck model and write a prompt for his requirements of the duck decoration
  - An LLM selects suitable decorations for each duck component from the existing database (if available)
  - The user receives a preview of the result (3D model with applied textures)
+ Optional dashboard (progress bar, etc...)

---

== Questions

- Single model ? Multiple models ? Modular model ?
- Licenses (images, code) ? Legal implications ?

---

#table(
  columns: (auto, 1fr),
  inset: .4em,
  align: (center + horizon, left),
  table.header[*Week*][*Milestones*],
  [W1], [
    - (Successful) hand-eye calibration ($alpha$)
    - Move robot programmatically: follow instructions, move arm A $->$ B
    - Select material (pens, gripper, etc.)
    - Select generative AI solution to create textures from a textual prompt
    - Define interfaces between steps
    - Select unwrapping solution (projection, direct AI generation, ...)
    - Lay out algorithmic steps for generating drawing instructions from a texture
    - Sketch supports, verified by expert
    - Print duck to experiment with 3D printer
    - Define robot range, constraints and precision
    - Precisely define MVP (what it is / isn't) and milestones
  ],
  [W2], [
    
  ],
  [W3], [
    - *MVP / Prototype*
  ],
  [W4], [
    
  ],
  [W5], [
    
  ],
  [W6], [
    
  ],
  [W7], [
    
  ]
)