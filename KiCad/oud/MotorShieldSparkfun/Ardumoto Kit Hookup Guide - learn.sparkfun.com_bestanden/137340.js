// find this script
var target_script;
var scripts = document.getElementsByTagName('script');
for (var i=0; i<scripts.length; i++) {
  if (scripts[i].src == 'https://www.sparkfun.com/wish_lists/137340.js') {
    target_script = scripts[i];
    break;
  }
}
var target_parent = target_script.parentNode;

// css
var styles = document.createElement('link');
styles.rel = 'stylesheet';
styles.type = 'text/css';
styles.href = 'https://www.sparkfun.com/css/embed/wish_list.css';
target_parent.insertBefore(styles, target_script);

// wrapper for innerHTML
var wrapper = document.createElement('div');

var html = '<div id="wish-list-137340" class="sfe-wish-list">';

html += '<div class="sfe-title"><a href="https://www.sparkfun.com/wish_lists/137340"><strong>Ardumoto V2.0 Wishlist</strong> <span class="sfewl">SparkFun Wish List</span></a>';

// only show add to cart if on sparkfun.com
if (document.domain.match(/sparkfun\.com/)) {
  html += '<form action="https://www.sparkfun.com/wish_lists/137340/dump" method="post"><input type=submit value="Add all to cart" class="btn btn-default" /></form>';
}

html += '</div>';

html += '<div class="sfe-inner"><div class="sfe-row"><a href="https://www.sparkfun.com/products/13302"><img width="58" height="58" class="sfe-thumbnail" src="https://cdn.sparkfun.com/r/58-58/assets/parts/1/0/5/6/1/13302-01b.jpg" /><span class="sfe-text"><span class="sfe-item-title">Hobby Gearmotor - 200 RPM (Pair) <span class="sfe-sku"><span class="sfe-stock sfe-stock-in" title="in stock"></span> ROB-13302</span></span><span class="sfe-description">These are a pair of hobby gearmotors from DAGU. These gearmotors are the same ones recommended for use in the Shadow Chassis and offer a cheap and eas&hellip;</span></span></a></div><div class="sfe-row"><a href="https://www.sparkfun.com/products/8084"><img width="58" height="58" class="sfe-thumbnail" src="https://cdn.sparkfun.com/r/58-58/assets/parts/6/5/7/08084-01.jpg" /><span class="sfe-text"><span class="sfe-item-title">(3) Screw Terminals 3.5mm Pitch (2-Pin) <span class="sfe-sku"><span class="sfe-stock sfe-stock-in" title="in stock"></span> PRT-08084</span></span><span class="sfe-description">Screw Terminals with 3.5mm pitch pins. Comes in 2 or 3 positions and have the really cool feature of slide-locking together to form any size you need &hellip;</span></span></a></div><div class="sfe-row"><a href="https://www.sparkfun.com/products/13259"><img width="58" height="58" class="sfe-thumbnail" src="https://cdn.sparkfun.com/r/58-58/assets/parts/1/0/4/6/3/13259-03.jpg" /><span class="sfe-text"><span class="sfe-item-title">Wheel - 65mm (Rubber Tire, Pair) <span class="sfe-sku"><span class="sfe-stock sfe-stock-in" title="in stock"></span> ROB-13259</span></span><span class="sfe-description">These are a pair of basic, 65mm wheels with black rubber tires. These wheels are the same ones designed to fit onto DAGUs right angle gear motors util&hellip;</span></span></a></div><div class="sfe-row"><a href="https://www.sparkfun.com/products/10007"><img width="58" height="58" class="sfe-thumbnail" src="https://cdn.sparkfun.com/r/58-58/assets/parts/4/1/6/6/10007-01.jpg" /><span class="sfe-text"><span class="sfe-item-title">Arduino Stackable Header Kit <span class="sfe-sku"><span class="sfe-stock sfe-stock-in" title="in stock"></span> PRT-10007</span></span><span class="sfe-description">These headers are made to work with the Arduino Main Board, Arduino Pro, and the Arduino Mega. They are the perfect height for clearing the USB-B conn&hellip;</span></span></a></div><div class="sfe-row"><a href="https://www.sparkfun.com/products/9518"><img width="58" height="58" class="sfe-thumbnail" src="https://cdn.sparkfun.com/r/58-58/assets/parts/3/2/6/2/09518-01.jpg" /><span class="sfe-text"><span class="sfe-item-title">9V to Barrel Jack Adapter <span class="sfe-sku"><span class="sfe-stock sfe-stock-in" title="in stock"></span> PRT-09518</span></span><span class="sfe-description">This simple cable has so many uses! Plug the 9 volt battery clip onto a standard 9V battery and connect the other end to anything with a 5.5x2.1mm, ce&hellip;</span></span></a></div>';

html += '<div class="sfe-footer"><a class="button" href="https://www.sparkfun.com/wish_lists/137340">View <strong>Ardumoto V2.0 Wishlist</strong> on SparkFun.com</a></div>';

html += '</div>'; // end .sfe-inner

html += '</div>'; // end .sfe-wish-list

wrapper.innerHTML = html;

target_parent.insertBefore(wrapper, target_script);
