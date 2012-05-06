class Conference < ActiveRecord::Base

  attr_accessible :phone_no, :passcode, :on_date, :at_time, :email
  
  def set_passcode(text)
  	self.passcode = (PASSCODE_FORMAT.collect { |f| text.match(f).to_s.gsub(/\D/, "") }).select {|d| d.strip! || d unless d.blank? }.first
  end
  
  def set_date(text)
  	val = (DATE_FORMAT.collect { |f| text.match(f).to_s }).select {|d| d.strip! || d unless d.blank? } 
  	self.on_date = Date.strptime(val.first ,"%B %d, %Y") rescue Date.strptime(val.first ,"%a, %B %d") rescue nil
  end
  
  def set_phone_no(text)
  	self.phone_no = (PHONE_FORMAT.collect { |f| text.match(f).to_s.gsub(/\D/, "") }).select {|d| d.strip! || d unless d.blank? }.first
  end
  
  def set_time(text)
  	self.at_time = (TIME_FORMAT.collect { |f| text.match(f).to_s }).select {|d| d.strip! || d unless d.blank? }.first
  end
  
  def set_email(from)
  	self.email = from.match(/([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+/).to_s
  end
  
end

#"gotomeeting 1.  Please join my meeting.\nhttps://www2.gotomeeting.com/join/135889466 2.  Join the conference call:\nConference Dial-in Number: (559) 546-1000\nParticipant Access Code: 941322# Meeting ID: 135-889-466 GoToMeeting® \nOnline Meetings Made Easy™"

#"GoToMeeting Invitation - Pverify Meeting Thu, March 1, 9pm – 10pm Event details Find a time Where Conference call map  Calendar XXXXYYYZZZ@ddjsjdkjdkasd.com  Description 2.  Use your microphone and speakers (VoIP) - a headset is recommended.  Or, call in using your telephone. United States: +1 (786) 358-5410 Access Code: 322-362-042\nAudio PIN: Shown after joining the meeting Meeting ID: 322-362-042 GoToMeeting® \nOnline Meetings Made Easy™"


#"Please join my online meeting on Tuesday, April 10, 2012 at 2:30pm Pacific\r\nTime:\r\n\r\n\r\n\r\n1.       Go to\r\nhttps://accelera\r\n#tedpay.webex.com/acceleratedpay/j.php?ED=196787317&UID=1342452687&PW=NZGExOTNhYzM2&RT=MiM0\r\n\r\n2.       Enter your name and email address.\r\n\r\n3.       If a password is required, enter the meeting password: 1234\r\n\r\n4.       Click \x93join\x94.\r\n\r\n5.       Call the toll-free number (US/Canada): 1-877-668-4493\r\n\r\nAccess code: 620 242 625\r\n\r\n-- \r\nWith Regards\r\nPreeti Gupta\r\n".force_encoding("binary").to_crlf

#"Hello ,\n\n shibu sen invites you to attend this online meeting.\n\n Topic: testing\n Date: Monday, May 30, 2012\n Time: 3:00 pm, Pacific Daylight Time (San Francisco, GMT-07:00)\n Meeting Number: 733 819 576\n Meeting Password: (This meeting does not require a password.)\n\n\n -------------------------------------------------------\n To join the online meeting (Now from mobile devices!)\n -------------------------------------------------------\n\n 1. Go to https://freetrial.webex.com/freetrial/j.php?ED=187795777&UID=1076277127&RT=MiM0\n\n 2. If requested, enter your name and email address.\n 3. If a password is required, enter the meeting password: (This\nmeeting does not require a password.)\n 4. Click \"Join\".\n\n To view in other time zones or languages, please click the link:\n https://freetrial.webex.com/freetrial/j.php?ED=187795777&UID=1076277127&ORT=MiM0\n\n\n -------------------------------------------------------\n To join the audio conference only\n -------------------------------------------------------\n Call-in toll number (US/Canada): 1-650-429-3300\n\n Access code:733 819 576\n\n -------------------------------------------------------\n For assistance\n -------------------------------------------------------\n 1. Go to https://freetrial.webex.com/freetrial/mc\n 2. On the left navigation bar, click \"Support\".\n\n You can contact me at: shibusen7@gmail.com\n\n\n To add this meeting to your calendar program (for example Microsoft\nOutlook), click this link:\n https://freetrial.webex.com/freetrial/j.php?ED=187795777&UID=1076277127&ICS=MI&LD=1&RD=2&ST=1&SHA2=8GtXf168G7dS0L2aTwSUadY7uPxFhtZ7P51p9mGMsVc=&RT=MiM0\n\n\n The playback of UCF (Universal Communications Format) rich media\nfiles requires appropriate players. To view this type of rich media\nfiles in the meeting, please check whether you have the players\ninstalled on your computer by going to\nhttps://freetrial.webex.com/freetrial/systemdiagnosis.php.\n\n Sign up for a free trial of WebEx\n http://www.webex.com/go/mcemfreetrial\n\n http://www.webex.com\n\n CCP:+16504293300x733819576\n\n IMPORTANT NOTICE: This WebEx service includes a feature that allows\naudio and any documents and other materials exchanged or viewed during\nthe session to be recorded. By joining this session, you automatically\nconsent to such recordings. If you do not consent to the recording,\ndiscuss your concerns with the meeting host prior to the start of the\nrecording or do not join the session. Please note that any such\nrecordings may be subject to discovery in the event of litigation.\n\n\n-- \nWith Regards\nPreeti Gupta\n"
