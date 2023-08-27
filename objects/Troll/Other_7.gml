state=EnemySTATE.CHASE



if ballspawn  =0     {
with instance_create_layer(x,y,"Instances",Trollball){
target = other.id 

}


ballspawn=1
}