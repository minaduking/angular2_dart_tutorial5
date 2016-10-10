// Copyright (c) 2016, Yuki Urata. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2/angular2.dart';


import 'dashboard_component.dart';
import 'heroes_component.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    template: '''
      <h1>{{title}}</h1>
      <nav>
        <a [routerLink]="['Heroes']">Heroes</a>
        <a [routerLink]="['Dashboard']">Dashboard</a>
      </nav>
      <router-outlet></router-outlet>
    ''',
    directives: const [ROUTER_DIRECTIVES, CORE_DIRECTIVES, FORM_DIRECTIVES],
    providers: const [ROUTER_PROVIDERS, HeroService]
)
@RouteConfig(const [
  const Route(path: '/dashboard', name: 'Dashboard', component: DashboardComponent, useAsDefault: true),
  const Route(path: '/hero', name: 'Heroes', component: HeroesComponent),
  const Route(path: '/hero/:id', name: 'HeroDetail', component: HeroDetailComponent),
])
class AppComponent{
  final String title = 'Tour of Heroes';
}
