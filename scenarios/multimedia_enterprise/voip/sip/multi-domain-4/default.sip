# Copyright (c) 2001-2015, SCALABLE Network Technologies, Inc.  All Rights Reserved.
#                          600 Corporate Pointe
#                          Suite 1200
#                          Culver City, CA 90230
#                          info@scalable-networks.com
#
# This source code is licensed, not sold, and is subject to a written
# license agreement.  Among other things, no portion of this source
# code may be copied, transmitted, disclosed, displayed, distributed,
# translated, used as the basis for a derivative work, or used, in
# whole or in part, for any program or purpose other than its intended
# use in compliance with the license agreement as part of the QualNet
# software.  This source code and certain of the algorithms contained
# within it are confidential trade secrets of Scalable Network
# Technologies, Inc. and may not be used as the basis for any other
# software, hardware, product or service.
#



1   0.0.1.1   one         a1.com   4    0.0.1.4
2   0.0.1.2   two         a1.com   4    0.0.1.4
3   0.0.1.3   three       a1.com   4    0.0.1.4
4   0.0.1.4   four        a1.com   4    0.0.1.4
4   0.0.5.1   four        a1.com   4    0.0.1.4
4   0.0.8.2   four        a1.com   4    0.0.1.4

5   0.0.6.1   five        a2.com   5    0.0.2.1
5   0.0.5.2   five        a2.com   5    0.0.2.1
5   0.0.2.1   five        a2.com   5    0.0.2.1
6   0.0.2.2   six         a2.com   5    0.0.2.1
7   0.0.2.3   seven       a2.com   5    0.0.2.1

8   0.0.6.2   eight       a3.com   8    0.0.3.1
8   0.0.7.1   eight       a3.com   8    0.0.3.1
8   0.0.3.1   eight       a3.com   8    0.0.3.1
9   0.0.3.2   nine        a3.com   8    0.0.3.1
10  0.0.3.3   ten         a3.com   8    0.0.3.1

11  0.0.7.2   eleven      a4.com   11   0.0.4.1
11  0.0.8.1   eleven      a4.com   11   0.0.4.1
11  0.0.4.1   eleven      a4.com   11   0.0.4.1
12  0.0.4.2   twelve      a4.com   11   0.0.4.1
13  0.0.4.3   thirteen    a4.com   11   0.0.4.1



#
# SIP-ALIAS-ADDRESS-FILE is a plain text file containing User Agent and
# Proxy node details in a specified format. It is necessary for the SIP 
# operation.
#
#
# The exact syntax of the file is as given below :
#
# 
# Each node of the SIP network will be represented by one or more lines
# depending on whether it has a singe interface or multiple interface 
# according to the following format.
#
# There are six columns in each row - 
# column1 - nodeId of the node
# column2 - IP ADDR for node interface
# column3 - alias name for the host
# column4 - sip domain which provides service to this user
# column5 - nodeId of the proxy configured for this domain
# column6 - IP ADDR of the proxy
# 
# For example a single line can look as: 
# <UA_id>   <UA_ip>  <host alias>  <domain>    <proxy_id> <proxy_ip_address>
#
#    1   192.10.10.1  stephen       snt.com        5       192.168.100.10
#
#
#--------------------------------------------------------------------------------


