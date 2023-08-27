
function InventorySearch(rootObject,itemType)
{
for (var i = 0; i <Inventory_Slots;i+=1)
	{
		if (rootObject.inventory[i] ==itemType)
		{
		
		return(i);
		
		}
	}
		return(-1);
	
	}
	
	function inventoryRemove(rootObject,itemType){
	var _slot = InventorySearch(rootObject,itemType)
	if (_slot!=-1)
	{
with (rootObject) inventory[_slot]=-1;
return true;
	
	}
	else return false 
	}
	

	
	
	function inventoryadd(rootObject,itemType){
	var _slot = InventorySearch(rootObject,-1)
	if (_slot !=- 1)
	{
with (Oinventory) if object_index != Oinventory268{
	
	inventory[_slot]=itemType;
return true;
}
	}
	else return false;
	}
	
function InventorySwap(objectFrom,slotFrom,ObjectTo,slotTo)
{
	var _itemFrom = objectFrom.inventory[slotFrom]
	objectFrom.inventory[slotFrom] = ObjectTo.inventory[slotTo];
	ObjectTo.inventory[slotTo] = _itemFrom

}
	
	




