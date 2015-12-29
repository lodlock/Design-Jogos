/// ItemPickup

for(i=0;i<=maxInvSlots;i+=1)
{
    if (argument0 == spr_bow && global.inventory[i,0] == spr_bow){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_sword && global.inventory[i,0] == spr_sword){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_fireball_pickup && global.inventory[i,0] == spr_fireball_pickup){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_web_pickup && global.inventory[i,0] == spr_web_pickup){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_frog && global.inventory[i,0] == spr_frog){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_laser_gun && global.inventory[i,0] == spr_laser_gun){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if global.inventory[i,0] == ""  {
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
}
