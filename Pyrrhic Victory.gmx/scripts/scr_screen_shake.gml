if (!variable_local_exists("winx")) {winx = window_get_x();}
if (!variable_local_exists("winy")) {winy = window_get_y();}
if (!variable_local_exists("on")) {on = 1;}
if (!variable_local_exists("screen_shake")) {screen_shake = 0;}

if (screen_shake > 1)
  {
  on=0
      // Edit Out Either Of These To Allow For Just Horizontal Or Vertical
      window_set_position(window_get_x()
 + round(random(32) - random(32)),window_get_y() + round(random(32) - random(32)))
  }
  
screen_shake -= 1;
if (screen_shake <= 0)
  {
      screen_shake = 0;
      if (window_get_x() < winx || window_get_x() > winx || window_get_y() < winy || window_get_y() > winy)
          {
              repeat (8)
                  {
                      if (window_get_x() < winx) {window_set_position(window_get_x()+1,window_get_y(
))} if (window_get_x() > winx) {window_set_position(window_get_x()-1,window_get_y(
))}
                      if (window_get_y() < winy) {window_set_position(window_get_x(),window_get_y(
)+1)} if (window_get_y() > winy) {window_set_position(window_get_x(),window_get_y(
)-1)}
                  }
          }
          if window_get_x() = winx && window_get_y() = winy
          on=1
  }
  
if (keyboard_check(vk_space) && on=1) {screen_shake = 64;}
if on=1
{
winx=window_get_x()
winy=window_get_y()
}
