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
%#   File: bash.t
%#
%# Author: $author$
%#   Date: 12/17/2022, 2/29/2024
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`
hostname=`hostname`

this=$0
usage='usage '$basename' { usage | echo }'
echo1=''
echo2=$usage
echo3=''

if [ "$1" != "" ]; then
    if [ "$1" != "echo" ]; then
        if [ "$1" != "usage" ]; then
            echo $echo1
            echo $echo2
            echo $echo3
            exit
        else # [ "$1" != "usage" ]; then
            echo $echo1
            echo $echo2
            echo $echo3
            exit
        fi # [ "$1" != "usage" ]; then
    else # [ "$1" != "echo" ]; then
        echo
        echo cat $this ...
        echo
        cat $this
        echo
        echo ... cat $this
        echo
        exit
    fi # [ "$1" != "echo" ]; then
else # [ "$1" != "" ]; then
    echo $echo1
    echo $echo2
    echo $echo3
    exit
fi # [ "$1" != "" ]; then
%
%)%)%