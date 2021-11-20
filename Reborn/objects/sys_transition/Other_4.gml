/// @description Re-disable foregrounds
for(i=0;i<8;i++){
 back_vis[i] = __background_get( e__BG.Visible, i );
 if __background_get( e__BG.Foreground, i ) {
  __background_set( e__BG.Visible, i, false );
 }
}

