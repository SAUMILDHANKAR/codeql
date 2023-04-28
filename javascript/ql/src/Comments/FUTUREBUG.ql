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
import semmle.javascript.YAML

from Comment c
//where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
where c.getText().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."

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

/**
import javascript
import semmle.javascript.YAML

predicate hasStandardTypeTag(string t) {
    t = this.getTag().regexpCapture("tag:yaml.org,2002:(.*)", 1)
  }
*/

/**
from hasStandardTypeTag string t
where string t.getTag().regexpCapture("tag:yaml.org,2002:(.*)", 1)
select string t, "FUTUREBUG comments should be addressed."

from YamlNode c
where c.eval().regexpMatch("(?s).*FIXME.*|.*FUTUREBUG.*|.*(?<!=)\\s*XXX.*")
select c, "FUTUREBUG comments should be addressed."


import javascript
import semmle.javascript.Regexp

from RegExpTerm z
where z.getLiteral().isUsedAsRegExp("/[a-z]+/g;")
select z, "TOYAMLDO comments should be addressed."



import javascript
import semmle.javascript.YAML


from YamlValue d
where d.eval("2001-12-15T02:59:43.1Z")
select d, "TOYAMLDO comments should be addressed."
*/
