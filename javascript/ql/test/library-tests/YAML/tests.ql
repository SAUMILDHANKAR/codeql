/**
 * @name yaml library test
 * @description best practice for yaml files.
 * @kind metric
 * @problem.severity recommendation
 * @id js/yaml-lib-test
 * @tags summary
 *       statistical
 *       non-attributable
 * @precision high
 */

import javascript
//import semmle.javascript.PrintAst
import semmle.javascript.YAML

/**
query predicate anchors(YamlNode n, string anchor) { n.getAnchor() = anchor }

query predicate eval(YamlNode n, YamlValue eval) {
  not n.eval() = n and
  eval = n.eval()
}

query predicate yamlParseError(YamlParseError err) { any() }

from yamlParseError string d
select d, "this should be fixed"


query predicate yamlMapping_maps(YamlMapping m, YamlValue k, YamlValue v) { m.maps(k, v) }

query predicate yamlNode(YamlNode n, string tag) { tag = n.getTag() }

query predicate yamlScalar(YamlScalar s, string style, string value) {
  style = s.getStyle() and value = s.getValue()
}


from yamlParseError any err
//where err.getText().any()
select err, "this should be fixed"

query predicate yamlParseError(YamlParseError err) { any() }


from yamlParseError e
where e.any()
select e, "this should be fixed"
*/


string yamlParseError(string e) {
  e = any(getMessage)
}
