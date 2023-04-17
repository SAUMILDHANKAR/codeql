/**
/**
 * @name FUTUREBUG comment
 * @description A comment that contains 'FUTUREBUG' or similar keywords may indicate code that is incomplete or
 *              broken, or it may highlight an ambiguity in the software's specification.
 * @kind problem
 * @problem.severity recommendation
 * @id js/futurebug-comment
 * @tags maintainability
 *       external/cwe/cwe-546
 * @precision medium
 */

import javascript
//import semmle.javascript.PrintAst
import semmle.javascript.YAML

/**
query predicate yamlParseError(YamlParseError err) { any() }


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


string yamlParseError(string e) {
  console.log(e)
  console.log(result)
  e = any(result)
}

int getSuccessor(int i) {
  result = i + 1 and
  i in [1 .. 9]
}


from string err
//where err.getText().any()
select err, "this should be fixed"
*/

from Comment c
where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."
