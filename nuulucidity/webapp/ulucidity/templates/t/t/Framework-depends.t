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
%#   File: Framework-depends.t
%#
%# Author: $author$
%#   Date: 12/10/2022
%########################################################################
%with(%
%is_depends_base,%(%else-then(%is_depends_base%,%(%is_Depends_base%)%)%)%,%
%depends_base,%(%else-then(%if-no(%is_depends_base%,,%(%depends_base%)%)%,%(%if-no(%is_depends_base%,,%(%
%rostra;nadir;fila;crono%
%)%)%)%)%)%,%
%Depends_base,%(%else-then(%if-no(%is_depends_base%,,%(%Depends_base%)%)%,%(%if-no(%is_depends_base%,,%(%depends_base%)%)%)%)%)%,%
%DEPENDS_BASE,%(%else-then(%DEPENDS_BASE%,%(%toupper(%Depends_base%)%)%)%)%,%
%depends_base,%(%else-then(%_depends_base%,%(%tolower(%Depends_base%)%)%)%)%,%
%is_depends_others,%(%else-then(%is_depends_others%,%(%is_Depends_others%)%)%)%,%
%depends_others,%(%else-then(%if-no(%is_depends_others%,,%(%depends_others%)%)%,%(%if-no(%is_depends_others%,,%(%
%rete;stara;cifra;bn;mp;talas%
%)%)%)%)%)%,%
%Depends_others,%(%else-then(%if-no(%is_depends_others%,,%(%Depends_others%)%)%,%(%if-no(%is_depends_others%,,%(%depends_others%)%)%)%)%)%,%
%DEPENDS_OTHERS,%(%else-then(%DEPENDS_OTHERS%,%(%toupper(%Depends_others%)%)%)%)%,%
%depends_others,%(%else-then(%_depends_others%,%(%tolower(%Depends_others%)%)%)%)%,%
%%(%if-then(%Depends_base%,%(%then-if(%Depends_others%,%(;)%)%)%)%)%)%