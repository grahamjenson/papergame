window.Papergame =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    Backbone.defaultrouter = new Papergame.Routers.PGRouter()
    Backbone.history.start({pushState: true})

$(document).ready ->
  Papergame.init()
   

String::trunc = (n) ->
  sb = this.substr(0,n)
  return sb

Number::truncate = ->
  this | 0

Number::pad = (size) ->
  s = "000000000" + this;
  return s.substr(s.length-size);

Number::toMinSec = ->
  sb = "#{(this / 60).truncate()}:#{(this % 60).truncate().pad(2) }"

Number::addCommas = ->
  nStr = "#{this}";
  x = nStr.split('.');
  x1 = x[0];
  if  x.length > 1
    x2 = '.#{x[1]}'
  else
    x2 = ''

  rgx = /(\d+)(\d{3})/;
  while rgx.test(x1)
    x1 = x1.replace(rgx, '$1' + ',' + '$2');
  return x1 + x2;

