# api-doc-utils
Steps to convert all the ramls to html
-- If on Windows, install cygwin (http://www.cygwin.org/)
-- Download Node version 8 or above
-- Download and install globally (npm install -g --save) https://mulesoft.github.io/oas-raml-converter/
-- Download and install globally (npm install -g --save) https://github.com/raml2html/raml2html
-- copy the ramls to the folder named "raml"
-- run the command "sh ./raplace.sh" on the parent folder (../raml) from cygwin or a bash shell. 
-- on completion, the folder "processed_output" will have the raml files in 1.0 version and the corresponding html.

For a different theme for html
-- npm install -g raml2html-slate-theme  
-- change the line in replace.sh from `raml2html $f to `raml2html --theme 'raml2html-slate-theme' $f