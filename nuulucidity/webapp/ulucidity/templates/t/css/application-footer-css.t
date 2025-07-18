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
%#   File: application-footer-css.t
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
%footer%
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
%%(%
%%include(%Include_path%/application-file-css.t)%%
%
/*
** footer
** ...
*/
.footer {
    width: 100%%;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    position: absolute;
    bottom: 5;
    z-index: 1;
}
.footer-buttons {
    width: 84px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
    visibility: hidden;
}
.footer-button {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
}
.footer-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-spacing: 0px 0px;
    border-radius: 5px;
    background-color: black;
    position: relative;
}
.footer-logo-square {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-spacing: 5px 5px;
    background-color: black;
    position: relative;
}
.footer-logo-frame { 
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: 3px;
    border-style: solid;
    border-color: gray;
    border-spacing: 0px 0px;
    border-radius: 10px;
    cursor: pointer;
}
.footer-logo-frame-label { 
    width: 100%%;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
}
.footer-logo-frame-label-text {
    font-size: 7px;
    font-weight: bolder;
    text-align: center;
    color: gray;
    background-color: black;
}
.footer-logo-frame:hover .footer-logo-frame-label-text {
    color: lightgray;
}
.footer-logo-icon { 
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    cursor: pointer;
}
.footer-logo-icon-image {
    background-image: url('../images/png/%Application%-logo.png');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-radius: 16px 16px 16px 16px;
    vertical-align: bottom;
}
.footer-logo-label { 
    width: 100%%;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
}
.footer-logo-label-text {
    font-size: 7px;
    font-weight: bolder;
    text-align: center;
    color: lightgray;
    background-color: black;
    opacity: 0;
    transition: .5s ease;                
}
.footer-logo:hover .footer-logo-label-text {
    opacity: 1;
}

/*
** dropover
** ...
*/
.dropover {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropover-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.dropover-button:hover, .dropover-button:focus {
     outline: none;
}
.dropover-button:hover .dropover-bar, .dropover-button:focus .dropover-bar {
     background-color: lightgray;
}
.dropover-bars {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 4px 4px;
}
.dropover-bar {
     width: 6px;
     height: 32px;
     padding: 0px;
     border-radius: 3px;
     background-color: gray;
}
/*
** dropover
** ...
*/

/*
** ...
** footer
*/
%
%)%)%