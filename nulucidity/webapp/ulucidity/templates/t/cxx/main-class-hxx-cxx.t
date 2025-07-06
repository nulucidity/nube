%########################################################################
%# Copyright (c) 1988-2022 $organization$
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
%#   File: main-class-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 12/13/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_xos,%(%else-then(%is_xos%,%(%is_Xos%)%)%)%,%
%xos,%(%else-then(%if-no(%is_xos%,,%(%xos%)%)%,%(%if-no(%is_xos%,,%(%
%%else-then(%include(%Include_path%/../t/source-xos.t)%,%(xos)%)%%
%)%)%)%)%)%,%
%Xos,%(%else-then(%if-no(%is_xos%,,%(%Xos%)%)%,%(%if-no(%is_xos%,,%(%xos%)%)%)%)%)%,%
%XOS,%(%else-then(%XOS%,%(%toupper(%Xos%)%)%)%)%,%
%xos,%(%else-then(%_xos%,%(%tolower(%Xos%)%)%)%)%,%
%is_app,%(%else-then(%is_app%,%(%is_App%)%)%)%,%
%app,%(%else-then(%if-no(%is_app%,,%(%app%)%)%,%(%if-no(%is_app%,,%(%
%%else-then(%include(%Include_path%/../t/source-app.t)%,%(app)%)%%
%)%)%)%)%)%,%
%App,%(%else-then(%if-no(%is_app%,,%(%App%)%)%,%(%if-no(%is_app%,,%(%app%)%)%)%)%)%,%
%APP,%(%else-then(%APP%,%(%toupper(%App%)%)%)%)%,%
%app,%(%else-then(%_app%,%(%tolower(%App%)%)%)%)%,%
%is_console,%(%else-then(%is_console%,%(%is_Console%)%)%)%,%
%console,%(%else-then(%if-no(%is_console%,,%(%console%)%)%,%(%if-no(%is_console%,,%(%
%%else-then(%include(%Include_path%/../t/source-console.t)%,%(console)%)%%
%)%)%)%)%)%,%
%Console,%(%else-then(%if-no(%is_console%,,%(%Console%)%)%,%(%if-no(%is_console%,,%(%console%)%)%)%)%)%,%
%CONSOLE,%(%else-then(%CONSOLE%,%(%toupper(%Console%)%)%)%)%,%
%console,%(%else-then(%_console%,%(%tolower(%Console%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(%
%%else-then(%include(%Include_path%/../t/source-application.t)%,%(%App%/%Console%)%)%%
%)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/source-framework.t)%,%(%Xos%)%)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_library,%(%else-then(%is_library%,%(%is_Library%)%)%)%,%
%library,%(%else-then(%if-no(%is_library%,,%(%library%)%)%,%(%if-no(%is_library%,,%(%
%%else-then(%include(%Include_path%/../t/framework.t)%,%(framework)%)%%
%)%)%)%)%)%,%
%Library,%(%else-then(%if-no(%is_library%,,%(%Library%)%)%,%(%if-no(%is_library%,,%(%library%)%)%)%)%)%,%
%LIBRARY,%(%else-then(%LIBRARY%,%(%toupper(%Library%)%)%)%)%,%
%library,%(%else-then(%_library%,%(%tolower(%Library%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(%
%%else-then(%include(%Include_path%/../t/source-what.t)%,%(%Library%)%)%%
%)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_main,%(%else-then(%is_main%,%(%is_Main%)%)%)%,%
%main,%(%else-then(%if-no(%is_main%,,%(%main%)%)%,%(%if-no(%is_main%,,%(%
%main%
%)%)%)%)%)%,%
%Main,%(%else-then(%if-no(%is_main%,,%(%Main%)%)%,%(%if-no(%is_main%,,%(%main%)%)%)%)%)%,%
%MAIN,%(%else-then(%MAIN%,%(%toupper(%Main%)%)%)%)%,%
%main,%(%else-then(%_main%,%(%tolower(%Main%)%)%)%)%,%
%is_main_opt,%(%else-then(%is_main_opt%,%(%is_Main_opt%)%)%)%,%
%main_opt,%(%else-then(%if-no(%is_main_opt%,,%(%main_opt%)%)%,%(%if-no(%is_main_opt%,,%(%
%main_opt%
%)%)%)%)%)%,%
%Main_opt,%(%else-then(%if-no(%is_main_opt%,,%(%Main_opt%)%)%,%(%if-no(%is_main_opt%,,%(%main_opt%)%)%)%)%)%,%
%MAIN_OPT,%(%else-then(%MAIN_OPT%,%(%toupper(%Main_opt%)%)%)%)%,%
%main_opt,%(%else-then(%_main_opt%,%(%tolower(%Main_opt%)%)%)%)%,%
%is_extends_namespace,%(%else-then(%is_extends_namespace%,%(%is_Extends_namespace%)%)%)%,%
%extends_namespace,%(%else-then(%if-no(%is_extends_namespace%,,%(%extends_namespace%)%)%,%(%if-no(%is_extends_namespace%,,%(%
%)%)%)%)%)%,%
%Extends_namespace,%(%else-then(%if-no(%is_extends_namespace%,,%(%Extends_namespace%)%)%,%(%if-no(%is_extends_namespace%,,%(%extends_namespace%)%)%)%)%)%,%
%EXTENDS_NAMESPACE,%(%else-then(%EXTENDS_NAMESPACE%,%(%toupper(%Extends_namespace%)%)%)%)%,%
%extends_namespace,%(%else-then(%_extends_namespace%,%(%tolower(%Extends_namespace%)%)%)%)%,%
%is_extends_namespace_path,%(%else-then(%is_extends_namespace_path%,%(%is_Extends_namespace_path%)%)%)%,%
%extends_namespace_path,%(%else-then(%if-no(%is_extends_namespace_path%,,%(%extends_namespace_path%)%)%,%(%if-no(%is_extends_namespace_path%,,%(%
%%parse(%Extends_namespace%,::,,%(/)%)%%
%)%)%)%)%)%,%
%Extends_namespace_path,%(%else-then(%if-no(%is_extends_namespace_path%,,%(%Extends_namespace_path%)%)%,%(%if-no(%is_extends_namespace_path%,,%(%extends_namespace_path%)%)%)%)%)%,%
%EXTENDS_NAMESPACE_PATH,%(%else-then(%EXTENDS_NAMESPACE_PATH%,%(%toupper(%Extends_namespace_path%)%)%)%)%,%
%extends_namespace_path,%(%else-then(%_extends_namespace_path%,%(%tolower(%Extends_namespace_path%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%
%%Framework%/%Application%/%What%%
%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_namespace_path,%(%else-then(%is_namespace_path%,%(%is_Namespace_path%)%)%)%,%
%namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%
%%parse(%Namespace%,::,,%(/)%)%%
%)%)%)%)%)%,%
%Namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%Namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%)%)%)%,%
%NAMESPACE_PATH,%(%else-then(%NAMESPACE_PATH%,%(%toupper(%Namespace_path%)%)%)%)%,%
%namespace_path,%(%else-then(%_namespace_path%,%(%tolower(%Namespace_path%)%)%)%)%,%
%is_namespace_ns,%(%else-then(%is_namespace_ns%,%(%is_Namespace_ns%)%)%)%,%
%namespace_ns,%(%else-then(%if-no(%is_namespace_ns%,,%(%namespace_ns%)%)%,%(%if-no(%is_namespace_ns%,,%(%
%%if(%Extends_namespace_path%,%(%if(%equal(%Main%,%Extends%)%,%(%
%%parse(%Extends_namespace_path%,/,,%(::)%)%%
%)%)%)%)%%
%)%)%)%)%)%,%
%Namespace_ns,%(%else-then(%if-no(%is_namespace_ns%,,%(%Namespace_ns%)%)%,%(%if-no(%is_namespace_ns%,,%(%namespace_ns%)%)%)%)%)%,%
%NAMESPACE_NS,%(%else-then(%NAMESPACE_NS%,%(%toupper(%Namespace_ns%)%)%)%)%,%
%namespace_ns,%(%else-then(%_namespace_ns%,%(%tolower(%Namespace_ns%)%)%)%)%,%
%is_class,%(%else-then(%is_class%,%(%is_Class%)%)%)%,%
%class,%(%else-then(%if-no(%is_class%,,%(%class%)%)%,%(%if-no(%is_class%,,%(%Main%)%)%)%)%)%,%
%Class,%(%else-then(%if-no(%is_class%,,%(%Class%)%)%,%(%if-no(%is_class%,,%(%class%)%)%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_class%,%(%tolower(%Class%)%)%)%)%,%
%is_extends,%(%else-then(%is_extends%,%(%is_Extends%)%)%)%,%
%extends,%(%else-then(%if-no(%is_extends%,,%(%extends%)%)%,%(%if-no(%is_extends%,,%(%Main_opt%)%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%(%Extends%)%)%,%(%if-no(%is_extends%,,%(%extends%)%)%)%)%)%,%
%EXTENDS,%(%else-then(%EXTENDS%,%(%toupper(%Extends%)%)%)%)%,%
%extends,%(%else-then(%_extends%,%(%tolower(%Extends%)%)%)%)%,%
%is_implements,%(%else-then(%is_implements%,%(%is_Implements%)%)%)%,%
%implements,%(%else-then(%if-no(%is_implements%,,%(%implements%)%)%,%(%if-no(%is_implements%,,%(typename TExtends::implements)%)%)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%(%Implements%)%)%,%(%if-no(%is_implements%,,%(%implements%)%)%)%)%)%,%
%IMPLEMENTS,%(%else-then(%IMPLEMENTS%,%(%toupper(%Implements%)%)%)%)%,%
%implements,%(%else-then(%_implements%,%(%tolower(%Implements%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(%
%%if(%if(%Extends_namespace_path%,%equal(%Main%,%Extends%)%)%,%Extends_namespace_path%,%Namespace_path%)%/%Extends%%then-if(%Extension%,%(.)%)%%
%)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Class%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_file_prefix,%(%else-then(%is_file_prefix%,%(%is_File_prefix%)%)%)%,%
%file_prefix,%(%else-then(%if-no(%is_file_prefix%,,%(%file_prefix%)%)%,%(%if-no(%is_file_prefix%,,%(main-class-)%)%)%)%)%,%
%File_prefix,%(%else-then(%if-no(%is_file_prefix%,,%(%File_prefix%)%)%,%(%if-no(%is_file_prefix%,,%(%file_prefix%)%)%)%)%)%,%
%FILE_PREFIX,%(%else-then(%FILE_PREFIX%,%(%toupper(%File_prefix%)%)%)%)%,%
%file_prefix,%(%else-then(%_file_prefix%,%(%tolower(%File_prefix%)%)%)%)%,%
%%(%
%%include(%Include_path%/hxx-cxx.t)%%
%)%)%