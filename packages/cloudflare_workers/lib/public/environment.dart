import 'kv_namespace.dart';
import 'do/durable_object_namespace.dart';

import '../interop/environment_interop.dart' as interop;

class Environment {
  final interop.Environment _delegate;

  Environment._(this._delegate);

  KVNamespace getKVNamespace(String name) =>
      kvNamespaceFromJsObject(_delegate.getKVNamespace(name));

  DurableObjectNamespace getDurableObjectNamespace(String name) =>
      durableObjectNamespaceFromJsObject(
          _delegate.getDurableObjectNamespace(name));

  String getAllPropKeys(){
    return _delegate.getAllPropKeys();
  }
  String getPropAsString(String propertyName){
    return _delegate.getPropAsString(propertyName);
  }
}

Environment environmentFromJsObject(interop.Environment obj) =>
    Environment._(obj);
