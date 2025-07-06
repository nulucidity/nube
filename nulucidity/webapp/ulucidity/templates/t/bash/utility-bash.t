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
%#   File: utility-bash.t
%#
%# Author: $author$
%#   Date: 12/26/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_script,%(%else-then(%is_script%,%(%is_Script%)%)%)%,%
%script,%(%else-then(%if-no(%is_script%,,%(%script%)%)%,%(%if-no(%is_script%,,%(%
%%else-then(%include(%Include_path%/../t/Script.t)%,script)%%
%)%)%)%)%)%,%
%Script,%(%else-then(%if-no(%is_script%,,%(%Script%)%)%,%(%if-no(%is_script%,,%(%script%)%)%)%)%)%,%
%SCRIPT,%(%else-then(%SCRIPT%,%(%toupper(%Script%)%)%)%)%,%
%script,%(%else-then(%_script%,%(%tolower(%Script%)%)%)%)%,%
%is_utility,%(%else-then(%is_utility%,%(%is_Utility%)%)%)%,%
%utility,%(%else-then(%if-no(%is_utility%,,%(%utility%)%)%,%(%if-no(%is_utility%,,%(%
%%else-then(%include(%Include_path%/../t/Utility.t)%,utility)%%
%)%)%)%)%)%,%
%Utility,%(%else-then(%if-no(%is_utility%,,%(%Utility%)%)%,%(%if-no(%is_utility%,,%(%utility%)%)%)%)%)%,%
%UTILITY,%(%else-then(%UTILITY%,%(%toupper(%Utility%)%)%)%)%,%
%utility,%(%else-then(%_utility%,%(%tolower(%Utility%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%
%%Utility% utility script %Script%%
%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%
%%Script%%
%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%
%sh%
%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_baseextension,%(%else-then(%is_baseextension%,%(%is_BaseExtension%)%)%)%,%
%baseextension,%(%else-then(%if-no(%is_baseextension%,,%(%baseextension%)%)%,%(%if-no(%is_baseextension%,,%(%
%%Base%%then-if(%Extension%,%(.)%)%%
%)%)%)%)%)%,%
%BaseExtension,%(%else-then(%if-no(%is_baseextension%,,%(%BaseExtension%)%)%,%(%if-no(%is_baseextension%,,%(%baseextension%)%)%)%)%)%,%
%BASEEXTENSION,%(%else-then(%BASEEXTENSION%,%(%toupper(%BaseExtension%)%)%)%)%,%
%baseextension,%(%else-then(%_baseextension%,%(%tolower(%BaseExtension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`
hostname=`hostname`

this=$0
usage='usage '$basename' { echo }'
echo1=''
echo2=$usage
echo3=''

utility=%Utility%
script=%Script%
directory=$dirname
path=$directory'/'$utility

hostoption='-o'
hostscript=$directory'/'$script'-host-address'
hostarg=$hostoption`$hostscript`

if [ "$1" != "" ]; then
    if [ "$1" != "echo" ]; then
        echo
        echo $path $hostarg $1 $2 $3 $4 ...
        echo
        $path $hostarg $1 $2 $3 $4
        echo
        echo ... $path $hostarg $1 $2 $3 $4
        echo
    else # [ "$1" != "echo" ]; then
        echo
        echo cat $this ...
        echo
        cat $this
        echo
        echo ... cat $this
        echo
    fi # [ "$1" != "echo" ]; then
else # [ "$1" != "" ]; then
    echo $echo1
    echo $echo2
    echo $echo3
fi # [ "$1" != "" ]; then
%
%)%)%