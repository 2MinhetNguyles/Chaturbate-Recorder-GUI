# Chaturbate-Recorder-GUI (.EXE)
Chaturbate Recorder GUI for FFMpeg

Requirements:
  *Windows only! Written and tested on Windows 10
  *FFMpeg

Instructions:
  1. Download and extract FFMpeg to a folder.
  2. Download Chaturbate Recorder.exe and place it in the FFMpeg folder.
  3. Run the exe file.
  4. Copy the URL of the model you want to record in to the GUI.
  5. Click get stream address, wait a couple of seconds, if it is successful the address will appear in the box below.
  6. Click on start FFMpeg to begin recording.

Features:
  - This was written using VB6.0, so it will natively work in windows out of the box without any ****ing around.
  - Record stream from an input URL.
  - Recordings are automatically named by the model name and the date stamp in the .\recordings folder.
  - Favourites list implemented.
  - Check for what favourites are currently online.
  - Preview stream button & functionality.
  -ffmpeg window is hidden after recording is started (you can unhide it from the running recorders screen).
  -The new video gallery will also sort all of you recordings into models and allow you to view them.

FAQS:
  - Q.Why VB6.0 and not some other curley brace language.
  - A.Short answer, I am very familiar with VB and VB variants (6.0 being my favourite.)
  - A.Opinionated answer, curley brace languages suck dick.
    
  - Q. The stream suddenly stopped recording?
  - A. This is a GUI for FFMpeg not a recorder, the model has probably gone offline/switched to private show and thus the stream has dropped out (the stream address actually changes when this happens too). Also it does require a fairly large amount of bandwidth to stream and capture.
    
  - Q.What IDE did you use?
  - A.Microsoft Visual Basic 6.0











# Chaturbate-Recorder-GUI-HTA (OBSOLETE)
This is not a recorder it is a GUI for recording using FFMpeg

Requirements:
  *Windows only! Written and tested on Windows 10
  *FFMpeg

Instructions:
  1. Download and extract FFMpeg to a folder.
  2. Download recorder.hta and place it in the FFMpeg folder.
  3. Open the HTA file.
  4. Copy the URL of the model you want to record in to the GUI.
  5. Click get stream address, wait a couple of seconds, if it is successful the address will appear in the box below.
  6. Click on start FFMpeg to begin recording.
  
Features:
  - This was written using VBScript & MSHTA, so it will natively work in windows out of the box without any ****ing around.
  - Record stream from an input URL.
  - Recordings are automatically named by the model name and the date stamp in the .\recordings folder.
  - Favourites list implemented.
  - Preview stream button (so far only when selecting something in the favourites list).
  
  
Future Wish List: 
  - Online / Offline models list.
  - I'll think of more later.
  
  
FAQS:
  - Q.Why VBScript and not JavaScript?
  - A.I am more familiar with VBScript, but if someone wants to convert go ahead, shouldn't be too difficult.
    
  - Q. The stream suddenly stopped recording?
  - A. This is a GUI for FFMpeg not a recorder, the model has probably gone offline/switched to private show and thus the stream has dropped out (the stream address actually changes when this happens too).
    
  - Q.What IDE did you use?
  - A.HTAEDIT
    
