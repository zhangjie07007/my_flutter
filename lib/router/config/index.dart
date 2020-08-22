import '../../page/search/list/index.dart';
import '../../page/search/detail/index.dart';

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
];