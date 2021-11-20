/// @description Clean up
//We free our surfaces from memory, and re-enables our foregrounds.
surface_free(surface_from);
surface_free(surface_to);
for(i=0;i<8;i++){
 __background_set( e__BG.Visible, i, back_vis[i] );
}

