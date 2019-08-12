# i3-setup
This repository consists of my i3 files, Scripts and patches 

# To lock the screen on suspend
  1. Save the Scripts folder in your /home/<username>/ directory.
  2. Modify the %i in user and path in "lock@.service" file in Scripts. 
  3. Move the lock@.service in /etc/systemd/system.
  4. Make it executable
  
  ```
  $ chmod +x lock@.service
  ```
  5. Then enable it for your user.
  
  ```
  $ systemctl enable lock@<username>.service
  ```
   This should do the trick.
   
# To setup the brightness settings head over to 
  https://github.com/jappeace/brightnessctl
# To remove screen tearing 
  1.Install compton by :
  
  ```
  sudo apt install compton
  ```
  2. Edit ~/.config/compton.conf or wherever you keep your config files
  
  ```
  # basic configuration
backend = "glx";
vsync = "opengl-swc";

glx-copy-from-front = true;
glx-swap-method = 2;
xrender-sync = true;
xrender-sync-fence = true;

# transparancy settings for i3
opacity-rule = [
    "0:_NET_WM_STATE@:32a *= '_NET_WM_STATE_HIDDEN'"
];
```
or this variation
```
backend = "glx";
glx-no-stencil = true;
paint-on-overlay = true;
vsync = "opengl-swc";
```
Choose what is working for you.


   
   

  
  
  

  
  

