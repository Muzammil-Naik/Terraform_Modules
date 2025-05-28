output "Resource_Group_Names_and_Locations" { 
description = "The Names and Regions/Locations of the Resource Groups"
  value = merge( 
    { 
        output1 = local.rgnames 
        output2 = local.rglocations 
    } 
  ) 
} 