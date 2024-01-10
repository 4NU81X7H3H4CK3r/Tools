***Tools***
----------
**PentestSetup** 

.sh script for Pentest directory setup, finding live host, and a quick scan of 5 RMI ports for the live hosts found based off the <br> `"The Art on Network Pentration Testing by Royce Davis"` [Github](https://github.com/R3dy)

 
* First it will create the directory structure all you need to do is present the name of the client
* Then it will pull down you current IP check the subnet and to find live hosts 
* After that it will check 5 known RMI ports 
> The purpose of this is two fold, <br>
1st:  To quickly setup engagment directory structure *Orgainzation is king!!* <br>
2nd:  Gives us something to start poking around at while we let are bigger scans run *As a Pentester multitasking is imperative!!* <br>




`Update Network interface configuration to whatever you are currently on` <br> 

&emsp; Step 1:  Pull down *code* <br>
&emsp; Step 2:  *type:* vim PentestSetup.sh <br>
&emsp; Step 3:  *type:* /eth2 && then hit: <enter> <br>
&emsp; Step 4:  *type:* dw <br>
&emsp; Step 5:  *type:* i <br>
&emsp; Step 6:  *type:* your current network interface device && then hit: <space bar> <br>
&emsp; Step 7:  *hit:* \<Esc> <br>
&emsp; Step 8:  *type:* ZZ (this will save and exit the updated code) <br>

> Appendix A: This is in no way an all inclusive scan, main purpose is to gather some Low-Hanging-Fruit (LHF), and not to remain idle while more comprehensive scans are being ran.  <br>
> Appendix B: This is fully customizable and I, encourge you to make this you own <br>
> Appendix C: The **_upgrade code_** section is based on the "VIM" text editior any **_(TE)_** will work, it really comes down to dealers choice <br>
------------------
**Resources** 
> A collection of Penetration Testing & Redteam resources.
