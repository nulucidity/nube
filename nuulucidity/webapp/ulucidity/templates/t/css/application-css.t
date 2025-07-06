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
%#   File: application-css.t
%#
%# Author: $author$
%#   Date: 5/8/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
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
%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%
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
%is_body_bg_image_path,%(%else-then(%is_body_bg_image_path%,%(%is_Body_bg_image_path%)%)%)%,%
%body_bg_image_path,%(%else-then(%if-no(%is_body_bg_image_path%,,%(%body_bg_image_path%)%)%,%(%if-no(%is_body_bg_image_path%,,%(%
%../images%
%)%)%)%)%)%,%
%Body_bg_image_path,%(%else-then(%if-no(%is_body_bg_image_path%,,%(%Body_bg_image_path%)%)%,%(%if-no(%is_body_bg_image_path%,,%(%body_bg_image_path%)%)%)%)%)%,%
%BODY_BG_IMAGE_PATH,%(%else-then(%BODY_BG_IMAGE_PATH%,%(%toupper(%Body_bg_image_path%)%)%)%)%,%
%body_bg_image_path,%(%else-then(%_body_bg_image_path%,%(%tolower(%Body_bg_image_path%)%)%)%)%,%
%is_body_bg_image_base,%(%else-then(%is_body_bg_image_base%,%(%is_Body_bg_image_base%)%)%)%,%
%body_bg_image_base,%(%else-then(%if-no(%is_body_bg_image_base%,,%(%body_bg_image_base%)%)%,%(%if-no(%is_body_bg_image_base%,,%(%
%%Application%-background%
%)%)%)%)%)%,%
%Body_bg_image_base,%(%else-then(%if-no(%is_body_bg_image_base%,,%(%Body_bg_image_base%)%)%,%(%if-no(%is_body_bg_image_base%,,%(%body_bg_image_base%)%)%)%)%)%,%
%BODY_BG_IMAGE_BASE,%(%else-then(%BODY_BG_IMAGE_BASE%,%(%toupper(%Body_bg_image_base%)%)%)%)%,%
%body_bg_image_base,%(%else-then(%_body_bg_image_base%,%(%tolower(%Body_bg_image_base%)%)%)%)%,%
%is_body_bg_image_extension,%(%else-then(%is_body_bg_image_extension%,%(%is_Body_bg_image_extension%)%)%)%,%
%body_bg_image_extension,%(%else-then(%if-no(%is_body_bg_image_extension%,,%(%body_bg_image_extension%)%)%,%(%if-no(%is_body_bg_image_extension%,,%(%
%png%
%)%)%)%)%)%,%
%Body_bg_image_extension,%(%else-then(%if-no(%is_body_bg_image_extension%,,%(%Body_bg_image_extension%)%)%,%(%if-no(%is_body_bg_image_extension%,,%(%body_bg_image_extension%)%)%)%)%)%,%
%BODY_BG_IMAGE_EXTENSION,%(%else-then(%BODY_BG_IMAGE_EXTENSION%,%(%toupper(%Body_bg_image_extension%)%)%)%)%,%
%body_bg_image_extension,%(%else-then(%_body_bg_image_extension%,%(%tolower(%Body_bg_image_extension%)%)%)%)%,%
%is_body_bg_image,%(%else-then(%is_body_bg_image%,%(%is_Body_bg_image%)%)%)%,%
%body_bg_image,%(%else-then(%if-no(%is_body_bg_image%,,%(%body_bg_image%)%)%,%(%if-no(%is_body_bg_image%,,%(%
%%Body_bg_image_path%/%Body_bg_image_extension%/%Body_bg_image_base%.%Body_bg_image_extension%%
%)%)%)%)%)%,%
%Body_bg_image,%(%else-then(%if-no(%is_body_bg_image%,,%(%Body_bg_image%)%)%,%(%if-no(%is_body_bg_image%,,%(%body_bg_image%)%)%)%)%)%,%
%BODY_BG_IMAGE,%(%else-then(%BODY_BG_IMAGE%,%(%toupper(%Body_bg_image%)%)%)%)%,%
%body_bg_image,%(%else-then(%_body_bg_image%,%(%tolower(%Body_bg_image%)%)%)%)%,%
%%(%
%%include(%Include_path%/application-file-css.t)%%
%
/*
** body
** ...
*/
body { 
    font-family: Arial; 
}
.body {
    width: 100%%;
    height: 100%%;
    margin: 0px;
    font-family: Arial; /* %%Body_font_family%% */
    color: lightgray; /* %%Body_fg_color%% */
    background-color: black; /* %%Body_bg_color%% */
    background-image: url('%Body_bg_image%'); /* %%Body_bg_image%% */
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%% 100%%;
}
/*
** ...
** body
*/

/*
** form 
** ...
*/
form {
    border-style: solid;
    border-color: black; /* %%Form_bd_color%% */
    border-width: 1px 0px 1px 0px; /* %%Form_bd_width%% */
    position: relative;
    z-index: 1;
}
form pre {
    margin: 0;
}
form table td { 
    white-space: nowrap; 
    padding: 0px 10px 0px 0px; /* %%Form_padding%% */
}
.form { 
    color: black; /* %%Form_fg_color%% */
    background-color: lightgray; /* %%Form_bg_color%% */
}
/*
** ...
** form
*/

/*
** global
** ...
*/
a { 
    color: black; /* %%Form_fg_color%% */
    font-weight: bolder; /* %%Form_font_weight%% */
    text-decoration: none; /* %%Form_text_decoration%% */
}
a:hover { 
    color: black; /* %%Form_hv_color%% */
    font-weight: bolder; /* %%Form_hv_font_weight%% */
    text-decoration: underline; /* %%Form_hv_text_decoration%% */
}
.table { 
    white-space: nowrap; 
}
/*
** ...
** global
*/
%
%)%)%
