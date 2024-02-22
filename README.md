The metric we promote is the Code Coverage because it is the one that reflects the best portion of source code covered by unit tests. This is the metric you can see on the home page of a project.

As you can read in the Metric Definitions 1.8k page, the Code Coverage is computed as follow:

Coverage = (CT + CF + LC) / (2*B + EL)
where
CT = conditions that have been evaluated to ‘true’ at least once
CF = conditions that have been evaluated to ‘false’ at least once
LC = covered lines = lines_to_cover - uncovered_lines
B = total number of conditions
EL = total number of executable lines (lines_to_cover)
Whereas the Line Coverage is computed as follow:

Line coverage = LC / EL
where
LC = covered lines (lines_to_cover - uncovered_lines)
EL = total number of executable lines (lines_to_cover)
By simply looking at the definitions we can already see that the results will be different.

Another way to express the above is

Coverage = (Covered Conditions + Covered Lines) / (Conditions to Cover + Lines to Cover)
where
Covered Conditions = conditions_to_cover - uncovered conditions
Covered Lines = lines_to_cover - uncovered_lines
Conditions to Cover = total number of conditions ( conditions_to_cover )
Lines to Cover = total number of executable lines ( lines_to_cover )
The calculation can be simplified by the metrics themselves:

Coverage = ( conditions_to_cover - uncovered conditions + lines_to_cover - uncovered_lines ) / ( conditions_to_cover + lines_to_cover )
It can also happen that the Line coverage computed by SonarQube differs a little bit from the one calculated by the external tool. This is because the Lines to cover may not be the same according to SonarQube and to the tool.

You can find the definition of what SonarQube considers as a line of code on the metric-definitions 1.8k page.

The main idea of this article is to highlight the fact that comparing the coverage coming from SonarQube and the coverage coming from other tools is often misleading, SonarQube should be the reference point.

