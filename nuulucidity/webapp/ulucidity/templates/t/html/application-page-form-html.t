%########################################################################
%# Copyright (c) 1988-2023 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: application-page-form-html.t
%#
%# Author: $author$
%#   Date: 5/9/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%application%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%
%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%section,%(%else-then(%if-no(%is_section%,,%(%section%)%)%,%(%if-no(%is_section%,,%(%
%)%)%)%)%)%,%
%Section,%(%else-then(%if-no(%is_section%,,%(%Section%)%)%,%(%if-no(%is_section%,,%(%section%)%)%)%)%)%,%
%SECTION,%(%else-then(%SECTION%,%(%toupper(%Section%)%)%)%)%,%
%section,%(%else-then(%_section%,%(%tolower(%Section%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(%
%page%
%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%
%form%
%)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_which,%(%else-then(%is_which%,%(%is_Which%)%)%)%,%
%which,%(%else-then(%if-no(%is_which%,,%(%which%)%)%,%(%if-no(%is_which%,,%(%
%)%)%)%)%)%,%
%Which,%(%else-then(%if-no(%is_which%,,%(%Which%)%)%,%(%if-no(%is_which%,,%(%which%)%)%)%)%)%,%
%WHICH,%(%else-then(%WHICH%,%(%toupper(%Which%)%)%)%)%,%
%which,%(%else-then(%_which%,%(%tolower(%Which%)%)%)%)%,%
%is_form_name,%(%else-then(%is_form_name%,%(%is_Form_name%)%)%)%,%
%form_name,%(%else-then(%if-no(%is_form_name%,,%(%form_name%)%)%,%(%if-no(%is_form_name%,,%(%
%Form%
%)%)%)%)%)%,%
%Form_name,%(%else-then(%if-no(%is_form_name%,,%(%Form_name%)%)%,%(%if-no(%is_form_name%,,%(%form_name%)%)%)%)%)%,%
%FORM_NAME,%(%else-then(%FORM_NAME%,%(%toupper(%Form_name%)%)%)%)%,%
%form_name,%(%else-then(%_form_name%,%(%tolower(%Form_name%)%)%)%)%,%
%is_form_method,%(%else-then(%is_form_method%,%(%is_Form_method%)%)%)%,%
%form_method,%(%else-then(%if-no(%is_form_method%,,%(%form_method%)%)%,%(%if-no(%is_form_method%,,%(%
%POST%
%)%)%)%)%)%,%
%Form_method,%(%else-then(%if-no(%is_form_method%,,%(%Form_method%)%)%,%(%if-no(%is_form_method%,,%(%form_method%)%)%)%)%)%,%
%FORM_METHOD,%(%else-then(%FORM_METHOD%,%(%toupper(%Form_method%)%)%)%)%,%
%form_method,%(%else-then(%_form_method%,%(%tolower(%Form_method%)%)%)%)%,%
%is_form_action_path_template_type,%(%else-then(%is_form_action_path_template_type%,%(%is_Form_action_path_template_type%)%)%)%,%
%form_action_path_template_type,%(%else-then(%if-no(%is_form_action_path_template_type%,,%(%form_action_path_template_type%)%)%,%(%if-no(%is_form_action_path_template_type%,,%(%
%t%
%)%)%)%)%)%,%
%Form_action_path_template_type,%(%else-then(%if-no(%is_form_action_path_template_type%,,%(%Form_action_path_template_type%)%)%,%(%if-no(%is_form_action_path_template_type%,,%(%form_action_path_template_type%)%)%)%)%)%,%
%FORM_ACTION_PATH_TEMPLATE_TYPE,%(%else-then(%FORM_ACTION_PATH_TEMPLATE_TYPE%,%(%toupper(%Form_action_path_template_type%)%)%)%)%,%
%form_action_path_template_type,%(%else-then(%_form_action_path_template_type%,%(%tolower(%Form_action_path_template_type%)%)%)%)%,%
%is_form_action_template_type,%(%else-then(%is_form_action_template_type%,%(%is_Form_action_template_type%)%)%)%,%
%form_action_template_type,%(%else-then(%if-no(%is_form_action_template_type%,,%(%form_action_template_type%)%)%,%(%if-no(%is_form_action_template_type%,,%(%
%html%
%)%)%)%)%)%,%
%Form_action_template_type,%(%else-then(%if-no(%is_form_action_template_type%,,%(%Form_action_template_type%)%)%,%(%if-no(%is_form_action_template_type%,,%(%form_action_template_type%)%)%)%)%)%,%
%FORM_ACTION_TEMPLATE_TYPE,%(%else-then(%FORM_ACTION_TEMPLATE_TYPE%,%(%toupper(%Form_action_template_type%)%)%)%)%,%
%form_action_template_type,%(%else-then(%_form_action_template_type%,%(%tolower(%Form_action_template_type%)%)%)%)%,%
%is_form_action_template_what,%(%else-then(%is_form_action_template_what%,%(%is_Form_action_template_what%)%)%)%,%
%form_action_template_what,%(%else-then(%if-no(%is_form_action_template_what%,,%(%form_action_template_what%)%)%,%(%if-no(%is_form_action_template_what%,,%(%
%file%
%)%)%)%)%)%,%
%Form_action_template_what,%(%else-then(%if-no(%is_form_action_template_what%,,%(%Form_action_template_what%)%)%,%(%if-no(%is_form_action_template_what%,,%(%form_action_template_what%)%)%)%)%)%,%
%FORM_ACTION_TEMPLATE_WHAT,%(%else-then(%FORM_ACTION_TEMPLATE_WHAT%,%(%toupper(%Form_action_template_what%)%)%)%)%,%
%form_action_template_what,%(%else-then(%_form_action_template_what%,%(%tolower(%Form_action_template_what%)%)%)%)%,%
%is_form_action_template,%(%else-then(%is_form_action_template%,%(%is_Form_action_template%)%)%)%,%
%form_action_template,%(%else-then(%if-no(%is_form_action_template%,,%(%form_action_template%)%)%,%(%if-no(%is_form_action_template%,,%(%
%%Form_action_template_type%.%Form_action_path_template_type%%
%)%)%)%)%)%,%
%Form_action_template,%(%else-then(%if-no(%is_form_action_template%,,%(%Form_action_template%)%)%,%(%if-no(%is_form_action_template%,,%(%form_action_template%)%)%)%)%)%,%
%FORM_ACTION_TEMPLATE,%(%else-then(%FORM_ACTION_TEMPLATE%,%(%toupper(%Form_action_template%)%)%)%)%,%
%form_action_template,%(%else-then(%_form_action_template%,%(%tolower(%Form_action_template%)%)%)%)%,%
%is_form_action_path,%(%else-then(%is_form_action_path%,%(%is_Form_action_path%)%)%)%,%
%form_action_path,%(%else-then(%if-no(%is_form_action_path%,,%(%form_action_path%)%)%,%(%if-no(%is_form_action_path%,,%(%
%../templates/%Form_action_path_template_type%%
%)%)%)%)%)%,%
%Form_action_path,%(%else-then(%if-no(%is_form_action_path%,,%(%Form_action_path%)%)%,%(%if-no(%is_form_action_path%,,%(%form_action_path%)%)%)%)%)%,%
%FORM_ACTION_PATH,%(%else-then(%FORM_ACTION_PATH%,%(%toupper(%Form_action_path%)%)%)%)%,%
%form_action_path,%(%else-then(%_form_action_path%,%(%tolower(%Form_action_path%)%)%)%)%,%
%is_form_action,%(%else-then(%is_form_action%,%(%is_Form_action%)%)%)%,%
%form_action,%(%else-then(%if-no(%is_form_action%,,%(%form_action%)%)%,%(%if-no(%is_form_action%,,%(%
%%Form_action_path%/%Form_action_template_type%/%Form_action_template%%
%)%)%)%)%)%,%
%Form_action,%(%else-then(%if-no(%is_form_action%,,%(%Form_action%)%)%,%(%if-no(%is_form_action%,,%(%form_action%)%)%)%)%)%,%
%FORM_ACTION,%(%else-then(%FORM_ACTION%,%(%toupper(%Form_action%)%)%)%)%,%
%form_action,%(%else-then(%_form_action%,%(%tolower(%Form_action%)%)%)%)%,%
%%(%
%%include(%Include_path%/application-file-html.t)%%
%
<!--
=====================================================================
=== form
=====================================================================
-->
<form name="%Form_name%" method="%Form_method%" action="%Form_action%"
 onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','Form'),getFormValue('FormMethod','Form'),'Form')">
    <div class="form">

    File: <input name="File" value=""></input>[%Form_action_template_type%][.%Form_action_template_type%]
    <input type="radio" name="Extension" value="%Form_action_template_type%" unchecked="checked">.%Form_action_template_type%</input>
    <input type="radio" name="Extension" value="" unchecked="checked">no</input>
    <input type="checkbox" name="is_File" value="no" unchecked="checked">no</input>
    <br/>

    Template: <select name="FormTemplate">
    <option value="%Form_action%">.%Form_action_template_type% %Form_action_template_what% &nbsp;&nbsp; (%Form_action%)</option>
    <option value=""></option>
    <option value="../templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (../templates/t/t/parameters.t)</option>
    <option value="../templates/t/t/functions.t">t functions &nbsp;&nbsp; (../templates/t/t/functions.t)</option>
    <option value=""></option>
    <option value="/%Application%-cgi/cgi">cgi parameters &nbsp;&nbsp; (/%Application%-cgi/cgi)</option>
    <option value="/%Application%-cgi/cgicatch">catch cgi parameters &nbsp;&nbsp; (/%Application%-cgi/cgicatch)</option>
    <option value=""></option>
    </select>
    <br/>

    <br/>
    Copyright:<input name="Genesis" size="10" value=""/>[1988]<b></b>
    <input type="checkbox" name="is_Genesis" value="no" unchecked="checked">no</input>
    <b>-</b><input name="Year" size="10" value=""/>[%%year%(()%%())%%%]<b></b>
    <input type="checkbox" name="is_Year" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b>Organization:<input name="Organization" value=""></input>[$organization$]
    <input type="checkbox" name="is_Organization" value="no" unchecked="checked">no</input>
    <input type="checkbox" name="is_Copyright" value="no" unchecked="checked">no</input>
    <br/>
    Author:<input name="Author" value=""></input>[$author$]
    <input type="checkbox" name="is_Author" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b>Date:<input name="Date" size="10" value=""/>[%%date%(()%%())%%%]<b></b>
    <input type="checkbox" name="is_Date" value="no" unchecked="checked">no</input>
    <b>&nbsp;&nbsp;</b><select name="Claims">
    <option value=""></option>
    <option value="as_is">``as is''</option>
    <option value=""></option>
    </select>[``as is'']
    <input type="checkbox" name="is_Claims" value="no" unchecked="checked">no</input>
    <br/>

    <br/>
    Content-Type: <select name="content_type">
    <option value="text/plain">text</option>
    <option value="text/html">html</option>
    <option value="text/xml">xml</option>
    <option value="application/json">json</option>
    <option value="application/javascript">javascript</option>
    <option value=""></option>
    </select>
    <br/>
    Action: <select name="FormAction">
    <option value="%Form_action%">.%Form_action_template_type% %Form_action_template_what% &nbsp;&nbsp; (%Form_action%)</option>
    <option value=""></option>
    <option value="../templates/t/t/parameters.t">t parameters &nbsp;&nbsp; (../templates/t/t/parameters.t)</option>
    <option value="../templates/t/t/functions.t">t functions &nbsp;&nbsp; (../templates/t/t/functions.t)</option>
    <option value=""></option>
    <option value="/%Application%-cgi/cgi">cgi parameters &nbsp;&nbsp; (/%Application%-cgi/cgi)</option>
    <option value="/%Application%-cgi/cgicatch">catch cgi parameters &nbsp;&nbsp; (/%Application%-cgi/cgicatch)</option>
    <option value=""></option>
    </select>
    <br/>
    Method: <select name="FormMethod">
    <option value="POST">POST</option>
    <option value="GET">GET</option>
    <option value=""></option>
    </select>
    <br/>
    <br/>
    <input type="submit" name="submit" value="submit"/><br/>
    </div>
</form>
%
%)%)%