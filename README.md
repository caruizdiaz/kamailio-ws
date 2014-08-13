kamailio-ws
===========

Kamailio scripts to call from websocket UA to classic UA, and vice versa.

I will write a blog entry explaining how this works, but in a nutshell:

- this script is configured to run behind NAT, port TCP 10080 and TCP/UDP 5090 are exposed to the Internet
- you have to create valid users using, preferably, "kamctl add ..."
- RTP ports should be open in range 30k-35k, inclusive
- I used jssip as webrtc SIP UA: http://tryit.jssip.net/
- Always disable video before placing a call from jssip UA
- Always use Chrome. Firefox won't work, and I'm not sure about other browsers (UPDATE: FF now works)
- Remember to also change the record_route_preset() value
- I tested calls between:
	- jssip to csipsimple
	- csipsimple to jssip
	- csipsimple to csipsimple
