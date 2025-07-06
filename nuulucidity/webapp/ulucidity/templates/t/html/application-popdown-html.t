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
%popdown%
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
%is_popdown_rows,%(%else-then(%is_popdown_rows%,%(%is_Popdown_rows%)%)%)%,%
%popdown_rows,%(%else-then(%if-no(%is_popdown_rows%,,%(%popdown_rows%)%)%,%(%if-no(%is_popdown_rows%,,%(%
%home,home;home,home%
%)%)%)%)%)%,%
%Popdown_rows,%(%else-then(%if-no(%is_popdown_rows%,,%(%Popdown_rows%)%)%,%(%if-no(%is_popdown_rows%,,%(%popdown_rows%)%)%)%)%)%,%
%POPDOWN_ROWS,%(%else-then(%POPDOWN_ROWS%,%(%toupper(%Popdown_rows%)%)%)%)%,%
%popdown_rows,%(%else-then(%_popdown_rows%,%(%tolower(%Popdown_rows%)%)%)%)%,%
%%(%
%%include(%Include_path%/application-file-html.t)%%
%
<div id="myPopdown" class="popdown-content">
<table class="popover"><tr>
%parse(%Popdown_rows%,;,,%(
    </tr><tr>
)%,,%(%
%%with(%
%%(%
%%parse(%Popdown_row%,%(,)%,,%(
)%,,%(%
%%with(%
%is_popdown_icon_text,%(%else-then(%is_popdown_icon_text%,%(%is_Popdown_icon_text%)%)%)%,%
%popdown_icon_text,%(%else-then(%if-no(%is_popdown_icon_text%,,%(%popdown_icon_text%)%)%,%(%if-no(%is_popdown_icon_text%,,%(%
%%else-then(%left(%Popdown_col%,=)%,%Popdown_col%)%%
%)%)%)%)%)%,%
%Popdown_icon_text,%(%else-then(%if-no(%is_popdown_icon_text%,,%(%Popdown_icon_text%)%)%,%(%if-no(%is_popdown_icon_text%,,%(%popdown_icon_text%)%)%)%)%)%,%
%POPDOWN_ICON_TEXT,%(%else-then(%POPDOWN_ICON_TEXT%,%(%toupper(%Popdown_icon_text%)%)%)%)%,%
%popdown_icon_text,%(%else-then(%_popdown_icon_text%,%(%tolower(%Popdown_icon_text%)%)%)%)%,%
%is_popdown_icon_image,%(%else-then(%is_popdown_icon_image%,%(%is_Popdown_icon_image%)%)%)%,%
%popdown_icon_image,%(%else-then(%if-no(%is_popdown_icon_image%,,%(%popdown_icon_image%)%)%,%(%if-no(%is_popdown_icon_image%,,%(%
%%else-then(%right-of-left(%Popdown_col%,=)%,../images/png/%Application%-logo.png)%%
%)%)%)%)%)%,%
%Popdown_icon_image,%(%else-then(%if-no(%is_popdown_icon_image%,,%(%Popdown_icon_image%)%)%,%(%if-no(%is_popdown_icon_image%,,%(%popdown_icon_image%)%)%)%)%)%,%
%POPDOWN_ICON_IMAGE,%(%else-then(%POPDOWN_ICON_IMAGE%,%(%toupper(%Popdown_icon_image%)%)%)%)%,%
%popdown_icon_image,%(%else-then(%_popdown_icon_image%,%(%tolower(%Popdown_icon_image%)%)%)%)%,%
%is_popdown_item_href,%(%else-then(%is_popdown_item_href%,%(%is_Popdown_item_href%)%)%)%,%
%popdown_item_href,%(%else-then(%if-no(%is_popdown_item_href%,,%(%popdown_item_href%)%)%,%(%if-no(%is_popdown_item_href%,,%(%
%%else-then(%right-of-left(,:)%,%Application%-%Popdown_icon_text%.html)%%
%)%)%)%)%)%,%
%Popdown_item_href,%(%else-then(%if-no(%is_popdown_item_href%,,%(%Popdown_item_href%)%)%,%(%if-no(%is_popdown_item_href%,,%(%popdown_item_href%)%)%)%)%)%,%
%POPDOWN_ITEM_HREF,%(%else-then(%POPDOWN_ITEM_HREF%,%(%toupper(%Popdown_item_href%)%)%)%)%,%
%popdown_item_href,%(%else-then(%_popdown_item_href%,%(%tolower(%Popdown_item_href%)%)%)%)%,%
%%(%
%    <!--
    =====================================================================
    === ulucidity
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="%Popdown_item_href%">
        <table class="footer-logo"><tr><td>
            <table class="footer-logo-icon">
                <tr><td class="footer-logo-icon-image" style="background-image:url('%Popdown_icon_image%')">
                    <table class="footer-logo-label">
                        <tr><td class="footer-logo-label-text">%Popdown_icon_text%</td></tr>
                    </table>
                </td></tr>
            </table>
    </td></tr></table></a></td>
%
%)%)%%
%)%,Popdown_col)%%
%)%)%%
%)%,Popdown_row)%<tr></table>
</div>
%
%)%)%