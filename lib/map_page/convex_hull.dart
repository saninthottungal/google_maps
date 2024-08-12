import "package:google_maps_flutter/google_maps_flutter.dart";

int _orientation(LatLng p, LatLng q, LatLng r) {
  num val = (q.longitude - p.longitude) * (r.latitude - p.latitude) -
      (q.latitude - p.latitude) * (r.longitude - p.longitude);
  return (val > 0 ? 1 : (val < 0 ? -1 : 0));
}

List<LatLng> convexHull(List<LatLng> points) {
  if (points.length <= 1) return points;
  LatLng start = points.reduce((a, b) => a.latitude < b.latitude ||
          (a.latitude == b.latitude && a.longitude < b.longitude)
      ? a
      : b);

  List<LatLng> sortedPoints = List.from(points)
    ..remove(start)
    ..sort((a, b) {
      int o = _orientation(start, a, b);
      if (o == 0) {
        return (a.latitude - start.latitude)
            .compareTo(b.latitude - start.latitude);
      }
      return o;
    });

  List<LatLng> hull = [start];
  for (LatLng p in sortedPoints) {
    while (hull.length > 1 &&
        _orientation(hull[hull.length - 2], hull.last, p) != -1) {
      hull.removeLast();
    }
    hull.add(p);
  }
  return hull;
}
