import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maps/map_page/map.state.dart';

final mapNotifierProvider =
    NotifierProvider<MapLogicNotifier, MapPageState>(MapLogicNotifier.new);

class MapLogicNotifier extends Notifier<MapPageState> {
  @override
  build() {
    return MapPageState();
  }
}
