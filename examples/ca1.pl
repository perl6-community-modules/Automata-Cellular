use v6;
BEGIN { @*INC.push('../lib') };
use Automata::Cellular;
use Automata::Cellular::Rule;

my Automata::Cellular $ca .= new(:rule_number<30>);
say "Rule Number $ca.rule.rule_number()\n$ca.rule.pretty()\n$ca.prettystate()";
while ( $ca++ ) { say $ca.prettystate() }
