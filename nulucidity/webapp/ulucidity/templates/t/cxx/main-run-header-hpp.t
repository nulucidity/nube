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
%#   File: main-run-header-hpp.t
%#
%# Author: $author$
%#   Date: 1/2/2023
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_which,%(%else-then(%is_which%,%(%is_Which%)%)%)%,%
%which,%(%else-then(%if-no(%is_which%,,%(%which%)%)%,%(%if-no(%is_which%,,%(which)%)%)%)%)%,%
%Which,%(%else-then(%if-no(%is_which%,,%(%Which%)%)%,%(%if-no(%is_which%,,%(%which%)%)%)%)%)%,%
%WHICH,%(%else-then(%WHICH%,%(%toupper(%Which%)%)%)%)%,%
%which,%(%else-then(%_which%,%(%tolower(%Which%)%)%)%)%,%
%is_whichset,%(%else-then(%is_whichset%,%(%is_WhichSet%)%)%)%,%
%whichset,%(%else-then(%if-no(%is_whichset%,,%(%whichset%)%)%,%(%if-no(%is_whichset%,,%()%)%)%)%)%,%
%WhichSet,%(%else-then(%if-no(%is_whichset%,,%(%WhichSet%)%)%,%(%if-no(%is_whichset%,,%(%whichset%)%)%)%)%)%,%
%WHICHSET,%(%else-then(%WHICHSET%,%(%toupper(%WhichSet%)%)%)%)%,%
%whichset,%(%else-then(%_whichset%,%(%tolower(%WhichSet%)%)%)%)%,%
%is_setwhich,%(%else-then(%is_setwhich%,%(%is_SetWhich%)%)%)%,%
%setwhich,%(%else-then(%if-no(%is_setwhich%,,%(%setwhich%)%)%,%(%if-no(%is_setwhich%,,%(%Which%)%)%)%)%)%,%
%SetWhich,%(%else-then(%if-no(%is_setwhich%,,%(%SetWhich%)%)%,%(%if-no(%is_setwhich%,,%(%setwhich%)%)%)%)%)%,%
%SETWHICH,%(%else-then(%SETWHICH%,%(%toupper(%SetWhich%)%)%)%)%,%
%setwhich,%(%else-then(%_setwhich%,%(%tolower(%SetWhich%)%)%)%)%,%
%is_run,%(%else-then(%is_run%,%(%is_Run%)%)%)%,%
%run,%(%else-then(%if-no(%is_run%,,%(%run%)%)%,%(%if-no(%is_run%,,%(run)%)%)%)%)%,%
%Run,%(%else-then(%if-no(%is_run%,,%(%Run%)%)%,%(%if-no(%is_run%,,%(%run%)%)%)%)%)%,%
%RUN,%(%else-then(%RUN%,%(%toupper(%Run%)%)%)%)%,%
%run,%(%else-then(%_run%,%(%tolower(%Run%)%)%)%)%,%
%is_params,%(%else-then(%is_params%,%(%is_Params%)%)%)%,%
%params,%(%else-then(%if-no(%is_params%,,%(%params%)%)%,%(%if-no(%is_params%,,%()%)%)%)%)%,%
%Params,%(%else-then(%if-no(%is_params%,,%(%Params%)%)%,%(%if-no(%is_params%,,%(%params%)%)%)%)%)%,%
%PARAMS,%(%else-then(%PARAMS%,%(%toupper(%Params%)%)%)%)%,%
%params,%(%else-then(%_params%,%(%tolower(%Params%)%)%)%)%,%
%is_args,%(%else-then(%is_args%,%(%is_Args%)%)%)%,%
%args,%(%else-then(%if-no(%is_args%,,%(%args%)%)%,%(%if-no(%is_args%,,%()%)%)%)%)%,%
%Args,%(%else-then(%if-no(%is_args%,,%(%Args%)%)%,%(%if-no(%is_args%,,%(%args%)%)%)%)%)%,%
%ARGS,%(%else-then(%ARGS%,%(%toupper(%Args%)%)%)%)%,%
%args,%(%else-then(%_args%,%(%tolower(%Args%)%)%)%)%,%
%is_returntype,%(%else-then(%is_returntype%,%(%is_ReturnType%)%)%)%,%
%returntype,%(%else-then(%if-no(%is_returntype%,,%(%returntype%)%)%,%(%if-no(%is_returntype%,,%(int)%)%)%)%)%,%
%ReturnType,%(%else-then(%if-no(%is_returntype%,,%(%ReturnType%)%)%,%(%if-no(%is_returntype%,,%(%returntype%)%)%)%)%)%,%
%RETURNTYPE,%(%else-then(%RETURNTYPE%,%(%toupper(%ReturnType%)%)%)%)%,%
%returntype,%(%else-then(%_returntype%,%(%tolower(%ReturnType%)%)%)%)%,%
%is_return,%(%else-then(%is_return%,%(%is_Return%)%)%)%,%
%return,%(%else-then(%if-no(%is_return%,,%(%return%)%)%,%(%if-no(%is_return%,,%(err)%)%)%)%)%,%
%Return,%(%else-then(%if-no(%is_return%,,%(%Return%)%)%,%(%if-no(%is_return%,,%(%return%)%)%)%)%)%,%
%RETURN,%(%else-then(%RETURN%,%(%toupper(%Return%)%)%)%)%,%
%return,%(%else-then(%_return%,%(%tolower(%Return%)%)%)%)%,%
%is_returnvalue,%(%else-then(%is_returnvalue%,%(%is_ReturnValue%)%)%)%,%
%returnvalue,%(%else-then(%if-no(%is_returnvalue%,,%(%returnvalue%)%)%,%(%if-no(%is_returnvalue%,,%(0)%)%)%)%)%,%
%ReturnValue,%(%else-then(%if-no(%is_returnvalue%,,%(%ReturnValue%)%)%,%(%if-no(%is_returnvalue%,,%(%returnvalue%)%)%)%)%)%,%
%RETURNVALUE,%(%else-then(%RETURNVALUE%,%(%toupper(%ReturnValue%)%)%)%)%,%
%returnvalue,%(%else-then(%_returnvalue%,%(%tolower(%ReturnValue%)%)%)%)%,%
%is_stdparams,%(%else-then(%is_stdparams%,%(%is_StdParams%)%)%)%,%
%stdparams,%(%else-then(%if-no(%is_stdparams%,,%(%stdparams%)%)%,%(%if-no(%is_stdparams%,,%(int argc, char_t** argv, char_t** env)%)%)%)%)%,%
%StdParams,%(%else-then(%if-no(%is_stdparams%,,%(%StdParams%)%)%,%(%if-no(%is_stdparams%,,%(%stdparams%)%)%)%)%)%,%
%STDPARAMS,%(%else-then(%STDPARAMS%,%(%toupper(%StdParams%)%)%)%)%,%
%stdparams,%(%else-then(%_stdparams%,%(%tolower(%StdParams%)%)%)%)%,%
%is_stdargs,%(%else-then(%is_stdargs%,%(%is_StdArgs%)%)%)%,%
%stdargs,%(%else-then(%if-no(%is_stdargs%,,%(%stdargs%)%)%,%(%if-no(%is_stdargs%,,%(argc, argv, env)%)%)%)%)%,%
%StdArgs,%(%else-then(%if-no(%is_stdargs%,,%(%StdArgs%)%)%,%(%if-no(%is_stdargs%,,%(%stdargs%)%)%)%)%)%,%
%STDARGS,%(%else-then(%STDARGS%,%(%toupper(%StdArgs%)%)%)%)%,%
%stdargs,%(%else-then(%_stdargs%,%(%tolower(%StdArgs%)%)%)%)%,%
%is_setstdparams,%(%else-then(%is_setstdparams%,%(%is_SetStdParams%)%)%)%,%
%setstdparams,%(%else-then(%if-no(%is_setstdparams%,,%(%setstdparams%)%)%,%(%if-no(%is_setstdparams%,,%(%
int argc, char_t** argv, char_t** env%
argc, argv, env%
%)%)%)%)%)%,%
%SetStdParams,%(%else-then(%if-no(%is_setstdparams%,,%(%SetStdParams%)%)%,%(%if-no(%is_setstdparams%,,%(%setstdparams%)%)%)%)%)%,%
%SETSTDPARAMS,%(%else-then(%SETSTDPARAMS%,%(%toupper(%SetStdParams%)%)%)%)%,%
%setstdparams,%(%else-then(%_setstdparams%,%(%tolower(%SetStdParams%)%)%)%)%,%
%is_setstdargs,%(%else-then(%is_setstdargs%,%(%is_SetStdArgs%)%)%)%,%
%setstdargs,%(%else-then(%if-no(%is_setstdargs%,,%(%setstdargs%)%)%,%(%if-no(%is_setstdargs%,,%(%
%)%)%)%)%)%,%
%SetStdArgs,%(%else-then(%if-no(%is_setstdargs%,,%(%SetStdArgs%)%)%,%(%if-no(%is_setstdargs%,,%(%setstdargs%)%)%)%)%)%,%
%SETSTDARGS,%(%else-then(%SETSTDARGS%,%(%toupper(%SetStdArgs%)%)%)%)%,%
%setstdargs,%(%else-then(%_setstdargs%,%(%tolower(%SetStdArgs%)%)%)%)%,%
%is_all,%(%else-then(%is_all%,%(%is_All%)%)%)%,%
%all,%(%else-then(%if-no(%is_all%,,%(%all%)%)%,%(%if-no(%is_all%,,%(all)%)%)%)%)%,%
%All,%(%else-then(%if-no(%is_all%,,%(%All%)%)%,%(%if-no(%is_all%,,%(%all%)%)%)%)%)%,%
%ALL,%(%else-then(%ALL%,%(%toupper(%All%)%)%)%)%,%
%all,%(%else-then(%_all%,%(%tolower(%All%)%)%)%)%,%
%is_set,%(%else-then(%is_set%,%(%is_Set%)%)%)%,%
%set,%(%else-then(%if-no(%is_set%,,%(%set%)%)%,%(%if-no(%is_set%,,%(set)%)%)%)%)%,%
%Set,%(%else-then(%if-no(%is_set%,,%(%Set%)%)%,%(%if-no(%is_set%,,%(%set%)%)%)%)%)%,%
%SET,%(%else-then(%SET%,%(%toupper(%Set%)%)%)%)%,%
%set,%(%else-then(%_set%,%(%tolower(%Set%)%)%)%)%,%
%is_unset,%(%else-then(%is_unset%,%(%is_Unset%)%)%)%,%
%unset,%(%else-then(%if-no(%is_unset%,,%(%unset%)%)%,%(%if-no(%is_unset%,,%(unset)%)%)%)%)%,%
%Unset,%(%else-then(%if-no(%is_unset%,,%(%Unset%)%)%,%(%if-no(%is_unset%,,%(%unset%)%)%)%)%)%,%
%UNSET,%(%else-then(%UNSET%,%(%toupper(%Unset%)%)%)%)%,%
%unset,%(%else-then(%_unset%,%(%tolower(%Unset%)%)%)%)%,%
%is_setrun,%(%else-then(%is_setrun%,%(%is_SetRun%)%)%)%,%
%setrun,%(%else-then(%if-no(%is_setrun%,,%(%setrun%)%)%,%(%if-no(%is_setrun%,,%(%Run%)%)%)%)%)%,%
%SetRun,%(%else-then(%if-no(%is_setrun%,,%(%SetRun%)%)%,%(%if-no(%is_setrun%,,%(%setrun%)%)%)%)%)%,%
%SETRUN,%(%else-then(%SETRUN%,%(%toupper(%SetRun%)%)%)%)%,%
%setrun,%(%else-then(%_setrun%,%(%tolower(%SetRun%)%)%)%)%,%
%is_AllSetRun,%(%else-then(%is_AllSetRun%,%(%else-then(%is_allsetrun%,no)%)%)%)%,%
%is_allsetrun,%(%else-then(%is_allsetrun%,%(%else-then(%is_AllSetRun%)%)%)%)%,%
%allsetrun,%(%else-then(%if-no(%is_allsetrun%,,%(%allsetrun%)%)%,%(%if-no(%is_allsetrun%,,%(%All%)%)%)%)%)%,%
%AllSetRun,%(%else-then(%if-no(%is_allsetrun%,,%(%AllSetRun%)%)%,%(%if-no(%is_allsetrun%,,%(%allsetrun%)%)%)%)%)%,%
%ALLSETRUN,%(%else-then(%ALLSETRUN%,%(%toupper(%AllSetRun%)%)%)%)%,%
%allsetrun,%(%else-then(%_allsetrun%,%(%tolower(%AllSetRun%)%)%)%)%,%
%%(%
%%if-no(%is_class%,,%(%
%
//////////////////////////////////////////////////////////////////////////
/// class %Class%
class exported %Class% {
public:
    %Class%() {}
    virtual ~%Class%() {}
private
    %Class%(const %Class% &copy) {}
protected:
)%)%%
%%if-no(%is_run%,,%(
    //////////////////////////////////////////////////////////////////////////
    /// ...%if-then(%Which%,_)%%Run%%if-no(%is_Derives_run%,,%(
    %ReturnType% %(()%derives::*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%);)%)%
    virtual %ReturnType% %if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;%if-no(%is_Derives_run%,,%(
        if (%if-then(%Which%,_)%%Run%_) {
            LOGGER_IS_LOGGED_INFO("(!(%Return% = %(()%this->*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))...");
            if (!(%Return% = %(()%this->*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
                LOGGER_IS_LOGGED_INFO("...(!(" << %Return% << " = %(()%this->*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))");
            } else {
                LOGGER_IS_LOGGED_INFO("...failed on (!(" << %Return% << " = %(()%this->*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))");
            }
        } else {
            LOGGER_IS_LOGGED_INFO("(!(%Return% = default_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))...");
            if (!(%Return% = default_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
                LOGGER_IS_LOGGED_INFO("...(!(" << %Return% << " = default_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))");
            } else {
                LOGGER_IS_LOGGED_INFO("...failed on(!(" << %Return% << " = default_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%)))");
            }
        })%)%
        return %Return%;
    }%if-no(%is_Derives_run%,,%(
    virtual %ReturnType% default_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        LOGGER_IS_LOGGED_INFO("(!(%Return% = extends::run(argc, argv, env)))...");
        if (!(%Return% = extends::run(argc, argv, env))) {
            LOGGER_IS_LOGGED_INFO("...(!(" << %Return% << " = extends::run(argc, argv, env)))");
        } else {
            LOGGER_IS_LOGGED_INFO("...failed on (!(" << %Return% << " = extends::run(argc, argv, env)))");
        }
        return %Return%;
    })%)%
    virtual %ReturnType% before_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        return %Return%;
    }
    virtual %ReturnType% after_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        return %Return%;
    }
    virtual %ReturnType% all_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        if (!(%Return% = before_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
            %ReturnType% %Return%2 = 0;
            %Return% = %if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%);
            if ((%Return%2 = after_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
                if (!(%Return%)) %Return% = %Return%2;
            }
        }
        return %Return%;
    }%if-no(%is_SetRun%,,%(
    virtual %SetReturnType% %if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        %if-then(%WhichSet%,_)%%SetRun%_ = &derives::all_%if-then(%SetWhich%,_)%%Run%;
        return %SetReturn%;
    }%if-no(%is_AllSetRun%,,%(
    virtual %SetReturnType% before_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SettdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% all_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    })%)%%if-no(%is_RunSet%,,%(
    virtual %SetReturnType% %if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }%if-no(%is_AllSetRun%,,%(
    virtual %SetReturnType% before_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SettdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% all_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Set%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    })%)%)%)%%if-no(%is_Unset%,,%(
    virtual %SetReturnType% %if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        %if-then(%WhichSet%,_)%%Run%_ = 0;
        return %SetReturn%;
    }%if-no(%is_AllSetRun%,,%(
    virtual %SetReturnType% before_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %ReturnType% all_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    })%)%%if-no(%is_RunUnset%,,%(
    virtual %SetReturnType% %if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }%if-no(%is_AllSetRun%,,%(
    virtual %SetReturnType% before_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SettdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% all_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%SetWhich%,_)%%SetRun%%then-if(%Unset%,_)%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    })%)%)%)%)%)%)%)%
    //////////////////////////////////////////////////////////////////////////
%if-no(%is_class%,,%(
)%)%)%)%%
%%if-no(%is_class%,,%(} /// class %Class%
%
%)%)%