%%
% cam1 = rossubscriber('/darwin/camera/image_raw')
% while(1)
% im1 = receive(cam1)
% imshow(readImage(im1))
% a = gcf;
% a.Position = [900 300 1000 600];
% end
%% kolano
tibiaR=rospublisher('/darwin/j_tibia_r_position_controller/command')
tibiaL=rospublisher('/darwin/j_tibia_l_position_controller/command')
mTibiaR=rosmessage(tibiaR.MessageType)
mTibiaL=rosmessage(tibiaL.MessageType)
mTibiaR.Data=1.5
mTibiaL.Data=-1.5
send(tibiaR,mTibiaR)
send(tibiaL,mTibiaL)
%%
thigh2L=rospublisher('/darwin/j_thigh2_l_position_controller/command')
thigh2R=rospublisher('/darwin/j_thigh2_r_position_controller/command')
mThigh2L=rosmessage(thigh2L.MessageType)
mThigh2R=rosmessage(thigh2R.MessageType)
mThigh2L.Data=0.8
mThigh2R.Data=-0.8
send(thigh2L,mThigh2L)
send(thigh2R,mThigh2R)
%% kostka
ankle1L=rospublisher('/darwin/j_ankle1_l_position_controller/command')
ankle1R=rospublisher('/darwin/j_ankle1_r_position_controller/command')
mAnkle1L=rosmessage(ankle1L.MessageType)
mAnkle1R=rosmessage(ankle1R.MessageType)
mAnkle1L.Data=-0.7
mAnkle1R.Data=0.7
send(ankle1L,mAnkle1L)
send(ankle1R,mAnkle1R)
%% ramiona
highArmL=rospublisher('/darwin/j_high_arm_l_position_controller/command')
highArmR=rospublisher('/darwin/j_high_arm_r_position_controller/command')
mHighArmL=rosmessage(highArmL.MessageType)
mHighArmR=rosmessage(highArmR.MessageType)
mHighArmL.Data=0.80
mHighArmR.Data=0.80
send(highArmL,mHighArmL)
send(highArmR,mHighArmR)