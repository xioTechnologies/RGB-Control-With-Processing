RGB-Control-With-Processing
===========================

[Adam Spiers'](http://www.pmstudio.co.uk/pmstudio/collaborator/ad-spiers) simple "Hello World" example for the setting [x-OSC](http://www.x-io.co.uk/x-osc/) on-board RGB LED using [Processing](http://www.processing.org/) as shown in his [demo video](http://www.youtube.com/watch?v=G3Y-X2LzqTA).  For more information see the [original post](http://www.x-io.co.uk/rgb-control-with-processing/).

The Processing sketch requires the [oscP5 library](http://www.sojamo.de/libraries/oscP5/) to send and receive OSC messages.  To use this library, copy the entire *oscP5* directory (.zip available in the repository) into a directory named *"libraries"* in Processing Sketchbook location (see: *File* > *Preferences* > *Sketchbook location*).  A tutorial for sending and receiving OSC messages in Processing is available on the [codasign](http://learning.codasign.com/index.php?title=Sending_and_Receiving_OSC_Data_Using_Processing) website.

<div align="center">
<img src="https://raw.github.com/xioTechnologies/RGB-Control-With-Processing/master/RGB%20Control%20With%20Processing.png"/>
</div>

**Windows 7 Firewall:**  When running the processing application for the first time you will be prompted to grant network access to Java by Windows Firewall.  Java must be given access "Public" access else network communication will not be possible.  These permission can be modified any time through *Control Panel* > *Windows Firewall* > *"Change settings"*.
