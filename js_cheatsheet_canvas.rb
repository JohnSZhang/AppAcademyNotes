:Canvas :Drawings

1. What Is Canvas? 

* Canvas Is A 2D Drawing API Added To HTML 5 And Supported By Most Browsers To Allow Deveopers To Draw Directly On To The Web Browser Without Flash Or Java. The <canvas> Tags Are Just Like Any Other Tags, With Width, Height, Name And Can Contain Any Number Of Elements Inside. 

* Canvas Coordinates Start At Top Left Most Point And Goes Right/Down. 

2. Basic Shapes

* Use :beginPath(), :closePath() To Create A Shape, :fillStyle() & :fill() To Fill In Color, And :lineTo() To Draw A Line But Use :stroke() To Actually Make It Appear.  

* Can Also Use The :fillRect() Method To Draw A Filled Rectangle Directly, :strokeRect() To Draw Simply An Outline, And :clearRect() To Clear A Rectangle. 

* :bezierCurveTo() And :quadraticCurveTo() Are More Advanced Forms Of Arc() That Allows You To Draw Curves. 

* After Using :beginPath(), It Is Often Helpful To Use :moveTo() To Move The pen Somewhere Else, And One Can Use :arc() To Draw SemiCircles. 

3. Images

* Use :drawImge() To Deal With Drawing Images, And One Can Make Changes/Stretch The Original Image Since DrawImage Takes ImageName, Source/Source-Coods, And Destination Coords As Arguments. 

4. Workin With Colors

* Gradient Can Be Created With The :createLinearGradient() And :createRadialGradient()  Methods, Which Then Will Need The :addColorStop() With Color Arguments To Then Be Finally Filled Out. 