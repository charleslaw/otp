# 
# %CopyrightBegin%
# 
# Copyright Ericsson AB 1998-2009. All Rights Reserved.
# 
# The contents of this file are subject to the Erlang Public License,
# Version 1.1, (the "License"); you may not use this file except in
# compliance with the License. You should have received a copy of the
# Erlang Public License along with this software. If not, it can be
# retrieved online at http://www.erlang.org/.
# 
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
# 
# %CopyrightEnd%
# 
# ------------------------------------------------
# Server defines
#

# EPMD port number
#   4365 - Version 4.2                 TCP
#   4366 - Version 4.3                 TCP
#   4368 - Version 4.4.0 - 4.6.2       TCP
#   4369 - Version 4.6.3 - 4.7.4       TCP/UDP
#  20000 - OpenShift                   TCP/UDP
EPMD_PORT_NO=20000


# ------------------------------------------------
# Client defines
#

# Node type:
#    72 = R3 hidden node
#    77 = R3 erlang node
#   104 = R4 hidden node
#   109 = R4 erlang node
#   (110 = R6 nodes (explicit flags for differences between nodes))
#
# What epmd has been told, differs very much between versions, both
# 111 and 110 seems to have been used to tell epmd, while 
# the actual nodetypes has still been 104 and 109. 
# EPMD does not care about this, why we move back to using
# the correct tag (an 'n') for all nodes.
#
EPMD_NODE_TYPE=110

# Lowest/Highest supported version of the distribution protocol:
#   0 = R3
#   1 = R4
#   2 = R5      ?????
#   3 = R5C
#   4 = R6 (development)
#   5 = R6
# There was no protocol change in release R5, so we didn't need to raise
# the version number. But now that R5A is released, it's best to keep it
# this way.
# The number was inadvertently raised for R5C, so we increase it again
# for R6.
# Distribution version 4 means a) distributed monitor and b) larger references
# in the distribution format. 
# In format 5, nodes can explicitly tell each other which of the above
# mentioned capabilities they can handle.
# Distribution format 5 contains the new md5 based handshake.

EPMD_DIST_LOW=5
EPMD_DIST_HIGH=5

