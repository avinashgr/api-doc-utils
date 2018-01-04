# api-doc-utils
Steps to convert all the ramls to html
-- If on Windows, install cygwin (http://www.cygwin.org/)<br />
-- Download Node version 8 or above<br />
-- Download and install globally (npm install -g --save) https://mulesoft.github.io/oas-raml-converter/<br /> 
-- Download and install globally (npm install -g --save) https://github.com/raml2html/raml2html<br /> 
-- copy the ramls to the folder named "raml"<br /> 
-- run the command "sh ./raplace.sh" on the parent folder (../raml) from cygwin or a bash shell.<br />  
-- on completion, the folder "processed_output" will have the raml files in 1.0 version and the corresponding html.<br /> 

For a different theme for html<br /> 
-- npm install -g raml2html-slate-theme<br />   
-- change the line in replace.sh from `raml2html $f to `raml2html --theme 'raml2html-slate-theme' $f