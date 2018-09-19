import GMaps from 'gmaps/gmaps.js';

const maps = document.querySelectorAll('.map');
if (maps) { // don't try to build a map if there's no div#map to inject in
  maps.forEach((mapElement) => {
    const map = new GMaps({ el: mapElement, lat: 0, lng: 0 });
    const origin = "350 Bird Ave. San Jose, CA 95112";
    const marker = JSON.parse('{"lat":37.3245989,"lng":-121.9001215}');
    console.log(marker)
    map.addMarker(marker);
    map.setCenter(37.3245989, -121.9001215);
    map.setZoom(16);
  });

}
