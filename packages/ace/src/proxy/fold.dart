part of ace.proxy;

class _FoldProxy extends _RangeListProxy implements Fold {
  
  Placeholder get placeholder => new _PlaceholderProxy._(_proxy['placeholder']);
  
  Range get range => _range(_proxy['range']);
  
  _FoldProxy(Range range, _PlaceholderProxy placeholder)
  : this._(new js.JsObject(_modules['ace/edit_session/fold']['Fold'],
      [_jsRange(range), placeholder._proxy]));
  
  _FoldProxy._(proxy) : super._(proxy);
}
