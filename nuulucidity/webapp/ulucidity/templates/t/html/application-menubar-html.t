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
%#   File: application-menubar-html.t
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
%menubar%
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
%is_menubar_home_items,%(%else-then(%is_menubar_home_items%,%(%is_Menubar_home_items%)%)%)%,%
%menubar_home_items,%(%else-then(%if-no(%is_menubar_home_items%,,%(%menubar_home_items%)%)%,%(%if-no(%is_menubar_home_items%,,%(%
%tools;home%
%)%)%)%)%)%,%
%Menubar_home_items,%(%else-then(%if-no(%is_menubar_home_items%,,%(%Menubar_home_items%)%)%,%(%if-no(%is_menubar_home_items%,,%(%menubar_home_items%)%)%)%)%)%,%
%MENUBAR_HOME_ITEMS,%(%else-then(%MENUBAR_HOME_ITEMS%,%(%toupper(%Menubar_home_items%)%)%)%)%,%
%menubar_home_items,%(%else-then(%_menubar_home_items%,%(%tolower(%Menubar_home_items%)%)%)%)%,%
%is_menubar_items,%(%else-then(%is_menubar_items%,%(%is_Menubar_items%)%)%)%,%
%menubar_items,%(%else-then(%if-no(%is_menubar_items%,,%(%menubar_items%)%)%,%(%if-no(%is_menubar_items%,,%(%
%)%)%)%)%)%,%
%Menubar_items,%(%else-then(%if-no(%is_menubar_items%,,%(%Menubar_items%)%)%,%(%if-no(%is_menubar_items%,,%(%menubar_items%)%)%)%)%)%,%
%MENUBAR_ITEMS,%(%else-then(%MENUBAR_ITEMS%,%(%toupper(%Menubar_items%)%)%)%)%,%
%menubar_items,%(%else-then(%_menubar_items%,%(%tolower(%Menubar_items%)%)%)%)%,%
%%(%
%%include(%Include_path%/application-file-html.t)%%
%
<!--
=====================================================================
=== menubar
=====================================================================
-->
<ul class="menubar">
%reverse-parse(%Menubar_home_items%,;,,,,%(%
%%with(%
%is_item_text,%(%else-then(%is_item_text%,%(%is_Item_text%)%)%)%,%
%item_text,%(%else-then(%if-no(%is_item_text%,,%(%item_text%)%)%,%(%if-no(%is_item_text%,,%(%
%%else-then(%left(%Item%,=)%,%Item%)%%
%)%)%)%)%)%,%
%Item_text,%(%else-then(%if-no(%is_item_text%,,%(%Item_text%)%)%,%(%if-no(%is_item_text%,,%(%item_text%)%)%)%)%)%,%
%ITEM_TEXT,%(%else-then(%ITEM_TEXT%,%(%toupper(%Item_text%)%)%)%)%,%
%item_text,%(%else-then(%_item_text%,%(%tolower(%Item_text%)%)%)%)%,%
%is_item_href,%(%else-then(%is_item_href%,%(%is_Item_href%)%)%)%,%
%item_href,%(%else-then(%if-no(%is_item_href%,,%(%item_href%)%)%,%(%if-no(%is_item_href%,,%(%
%%else-then(%right-of-left(%Item%,=)%,%Application%-%Item%.html)%%
%)%)%)%)%)%,%
%Item_href,%(%else-then(%if-no(%is_item_href%,,%(%Item_href%)%)%,%(%if-no(%is_item_href%,,%(%item_href%)%)%)%)%)%,%
%ITEM_HREF,%(%else-then(%ITEM_HREF%,%(%toupper(%Item_href%)%)%)%)%,%
%item_href,%(%else-then(%_item_href%,%(%tolower(%Item_href%)%)%)%)%,%
%%(    <li class="home"><a href="%Item_href%">%Item_text%</a></li>
)%)%%
%)%,Item)%</ul>
%
%)%)%