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
/**
import javascript

from Comment c
where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."
*/ 
/** 
import javascript

class CommaToken extends PunctuatorToken {
    CommaToken() {
        getValue() = "#"
    }
}

from CommaToken comma
where comma.getNextToken() instanceof CommaToken
select comma, "Omitted array elements are bad style."
*/


import javascript
import semmle.javascript.YAML

predicate hasStandardTypeTag(string t) {
    t = this.getTag().regexpCapture("tag:yaml.org,2002:(.*)", 1)
  }
  
from hasStandardTypeTag c
where c.getTag().regexpCapture("tag:yaml.org,2002:(.*)", 1)
select c, "FUTUREBUG comments should be addressed."

/**
from YamlNode c
where c.eval().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."
*/
