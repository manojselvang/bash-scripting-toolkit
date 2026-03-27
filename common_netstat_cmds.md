# netstat

## basic

netstat

## listening ports

netstat -l
netstat -ln
netstat -lpn

## tcp / udp

netstat -t
netstat -u
netstat -tu

## most used

netstat -tulnp

## established connections

netstat -an | grep ESTABLISHED

## routing

netstat -r

## interfaces

netstat -i

## continuous

netstat -c

---

## note

`netstat` is deprecated on most modern systems

use:
ss -tulnp
