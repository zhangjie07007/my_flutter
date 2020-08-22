import 'package:my_flutter/page/testPage/index.dart';

import '../../page/search/list/index.dart';
import '../../page/search/detail/index.dart';
import '../../page/testPage/index.dart';

List RouterList = <Map>[
  {
    'name':'searchList',
    'page':new SearchList(),
    'isRedirect':false
  },
  {
    'name':'searchDetail',
    'page':new SearchDetail(),
    'isRedirect':false
  },
  {
    'name':'test',
    'page':new TestPage(),
    'isRedirect':false
  },
];