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
%#   File: application-popdown-html.t
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
%)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(%
%dropdown%
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
%is_dropdown_items,%(%else-then(%is_dropdown_items%,%(%is_Dropdown_items%)%)%)%,%
%dropdown_items,%(%else-then(%if-no(%is_dropdown_items%,,%(%dropdown_items%)%)%,%(%if-no(%is_dropdown_items%,,%(%
%tools;home%
%)%)%)%)%)%,%
%Dropdown_items,%(%else-then(%if-no(%is_dropdown_items%,,%(%Dropdown_items%)%)%,%(%if-no(%is_dropdown_items%,,%(%dropdown_items%)%)%)%)%)%,%
%DROPDOWN_ITEMS,%(%else-then(%DROPDOWN_ITEMS%,%(%toupper(%Dropdown_items%)%)%)%)%,%
%dropdown_items,%(%else-then(%_dropdown_items%,%(%tolower(%Dropdown_items%)%)%)%)%,%
%%(%
%%include(%Include_path%/application-file-html.t)%%
%
<div id="myDropdown" class="dropdown-content">
%parse(%Dropdown_items%,;,,,,%(%
%%with(%
%is_dropdown_item_text,%(%else-then(%is_dropdown_item_text%,%(%is_Dropdown_item_text%)%)%)%,%
%dropdown_item_text,%(%else-then(%if-no(%is_dropdown_item_text%,,%(%dropdown_item_text%)%)%,%(%if-no(%is_dropdown_item_text%,,%(%
%%else-then(%left(%Dropdown_item%,=)%,%Dropdown_item%)%%
%)%)%)%)%)%,%
%Dropdown_item_text,%(%else-then(%if-no(%is_dropdown_item_text%,,%(%Dropdown_item_text%)%)%,%(%if-no(%is_dropdown_item_text%,,%(%dropdown_item_text%)%)%)%)%)%,%
%DROPDOWN_ITEM_TEXT,%(%else-then(%DROPDOWN_ITEM_TEXT%,%(%toupper(%Dropdown_item_text%)%)%)%)%,%
%dropdown_item_text,%(%else-then(%_dropdown_item_text%,%(%tolower(%Dropdown_item_text%)%)%)%)%,%
%is_dropdown_item_href,%(%else-then(%is_dropdown_item_href%,%(%is_Dropdown_item_href%)%)%)%,%
%dropdown_item_href,%(%else-then(%if-no(%is_dropdown_item_href%,,%(%dropdown_item_href%)%)%,%(%if-no(%is_dropdown_item_href%,,%(%
%%else-then(%right-of-left(%Dropdown_item%,=)%,%Application%-%Dropdown_item%.html)%%
%)%)%)%)%)%,%
%Dropdown_item_href,%(%else-then(%if-no(%is_dropdown_item_href%,,%(%Dropdown_item_href%)%)%,%(%if-no(%is_dropdown_item_href%,,%(%dropdown_item_href%)%)%)%)%)%,%
%DROPDOWN_ITEM_HREF,%(%else-then(%DROPDOWN_ITEM_HREF%,%(%toupper(%Dropdown_item_href%)%)%)%)%,%
%dropdown_item_href,%(%else-then(%_dropdown_item_href%,%(%tolower(%Dropdown_item_href%)%)%)%)%,%
%%(    <a class="dropdown-item" href="%Dropdown_item_href%">%Dropdown_item_text%</a>
)%)%%
%)%,Dropdown_item)%%
%</div>
%
%)%)%