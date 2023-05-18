/**
 * @name YAML parse error
 * @description A note is generated whenever there is a parsing error in a yaml file
 * @kind problem
 * @problem.severity recommendation
 * @id js/yaml-parse-error
 * @tags maintainability
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

from Comment c
where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."

from Comment c
select c, c.getText()


//following code gave one error
from YamlParseError c
select c, c.getMessage()


// query predicate yamlNode(YamlNode n, string tag) { tag = n.getTag() }


//following query gave 5000 notifications
from YamlNode n
select n, n.getTag()

//Error: Code Scanning could not process the submitted SARIF file:
from YamlScalar s
select s, s.getValue()

//Error: Code Scanning could not process the submitted SARIF file:
from YamlScalar s
select s, s.getStyle()


query predicate eval(YamlNode n, YamlValue eval) {
  not n.eval() = n and
  eval = n.eval()
}

query predicate anchors(YamlNode n, string anchor) { n.getAnchor() = anchor }


// this generated one alert for merge1.yaml file
from YamlNode n, string anchor
where n.getAnchor() = anchor
select n, n.getAnchor()
*/

from YamlParseError c
select c, c.getMessage()
