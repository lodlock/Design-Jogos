/// ItemPickup

for(i=0;i<=maxInvSlots;i+=1)
{
    if (argument0 == spr_crate && global.inventory[i,0] == spr_crate){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_bow && global.inventory[i,0] == spr_bow){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if (argument0 == spr_sword && global.inventory[i,0] == spr_sword){
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
    else if global.inventory[i,0] == ""  {
        global.inventory[i,0] = argument0;
        i = maxInvSlots;
    }
}
