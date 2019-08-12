# i3-setup
This repository consists of my i3 files, Scripts and patches 

# To lock the screen on suspend
  1. Save the Scripts folder in your /home/<username>/ directory.
  2. Modify the %i in user and path in "lock@.service" file in Scripts. 
  3. Move the lock@.service in /etc/systemd/system.
  4. Make it executable
     '''
  chmod +x lock@.service
  '''
  5. Then enable it for your user.
     '''
  systemctl enable lock@<username>.service
  '''
  
  This should do the trick.

  
  
  

  
  

