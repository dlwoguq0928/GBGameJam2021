/// @description Draw foregrounds
//We draw the foregrounds manually, since these are not drawn to the application surface.
for(i=0;i<8;i++){
 if __background_get( e__BG.Foreground, i ) && back_vis[i] {
  draw_background(__background_get( e__BG.Index, i ),__background_get( e__BG.X, i ),__background_get( e__BG.Y, i ));
  draw_background(__background_get( e__BG.Index, i ),__background_get( e__BG.X, i ),__background_get( e__BG.Y, i ));
 }
}

