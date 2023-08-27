
if keyboard_check(vk_down)&&t<=posy+141{t++}
if keyboard_check(vk_up)&&t>=posy-150{t--}
t=-1
if (t <= 140) && (t >= 60){n=0}
if (t <= 95) && (t >= -140){n=1}
if (t <= 50) && (t >= -340){n=2}
if (t <= 5) && (t >= -540){n=3}
if (t <= -40) && (t >= -740){n=4}
if (t <= -95) && (t >= -940){n=5}
if (t <= -140) {n=6}
