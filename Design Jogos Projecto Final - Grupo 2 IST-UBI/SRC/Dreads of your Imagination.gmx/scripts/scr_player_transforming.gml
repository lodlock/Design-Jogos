if(instance_exists(obj_pet)){
    if(obj_pet.state == states.petcontroll) state = states.petcontroll;
    if(obj_pet.state == states.normal) state = states.normal;
}