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
%#   File: hxx-cxx.t
%#
%# Author: $author$
%#   Date: 5/10/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(%
%cpp%
%)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%
%%TypeExtension%%
%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%
%%Extension%%
%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_body,%(%else-then(%is_body%,%(%is_Body%)%)%)%,%
%body,%(%else-then(%if-no(%is_body%,,%(%body%)%)%,%(%if-no(%is_body%,,%(%
%%if(%equal(%Extension%,hpp)%%equal(%Extension%,cpp)%,%(cpp)%,%(%
%%if(%equal(%Extension%,h)%%equal(%Extension%,c)%,%(c)%,%(%
%cpp%
%)%)%%
%)%)%%
%)%)%)%)%)%,%
%Body,%(%else-then(%if-no(%is_body%,,%(%Body%)%)%,%(%if-no(%is_body%,,%(%body%)%)%)%)%)%,%
%BODY,%(%else-then(%BODY%,%(%toupper(%Body%)%)%)%)%,%
%body,%(%else-then(%_body%,%(%tolower(%Body%)%)%)%)%,%
%is_header,%(%else-then(%is_header%,%(%is_Header%)%)%)%,%
%header,%(%else-then(%if-no(%is_header%,,%(%header%)%)%,%(%if-no(%is_header%,,%(%
%%if(%equal(%Body%,cpp)%,%(hpp)%,%(%
%%if(%equal(%Body%,c)%,%(h)%,%(%
%hpp%
%)%)%%
%)%)%%
%)%)%)%)%)%,%
%Header,%(%else-then(%if-no(%is_header%,,%(%Header%)%)%,%(%if-no(%is_header%,,%(%header%)%)%)%)%)%,%
%HEADER,%(%else-then(%HEADER%,%(%toupper(%Header%)%)%)%)%,%
%header,%(%else-then(%_header%,%(%tolower(%Header%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-%Header%-%Body%.t)%%
%)%)%