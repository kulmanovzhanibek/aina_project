import 'package:aina_project/bootstrap.dart';
import 'package:aina_project/core/const/flavor_config.dart';
import 'package:aina_project/features/app/presentation/app.dart';

void main() {
    FlavorConfig(
        flavor: Flavor.development,
        values: FlavorValues(
            name: 'Aina',
            baseUrl: 'http://api.joop.com.kz:3001/api',
        ),
    );
    bootstrap(() => const App());
}
