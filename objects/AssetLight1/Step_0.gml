if instance_exists(target)

{x= target.x
y= target.y
 z = target.z

light[|eLight.Range]= 50 +sin(get_timer()/r)*20
light[|eLight.Intensity]=2 +sin(get_timer()/r1)*1
light[| eLight.X]=target.x
light[| eLight.Y]= target.y-z

}


	