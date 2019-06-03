" Lookup the country for an IP address under the current cursor

" Make sure Python is ready
if !has("python")
  echo "vim has to be compiled with +python to run this"
  finish
endif

python << en

import vim, urllib

def getCountryFromIP( ip ):
  # use the minimal http://www.hostip.info/use.html API
  return urllib.urlopen('http://api.hostip.info/country.php?ip='+ip).read()

def getWordUnderCursor():
  return vim.eval("expand('<cWORD>')")
  
def lookupIPUnderCursor():
  ip = getWordUnderCursor()
  print "Looking up " + ip + "..."
  country = getCountryFromIP( ip )
  vim.command( "redraw" ) # discard previous messages
  print "Country: " + country
en

nmap <silent> ,IP :python lookupIPUnderCursor()
