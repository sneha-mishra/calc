function varargout = calci(varargin)
% CALCI MATLAB code for calci.fig
%      CALCI, by itself, creates a new CALCI or raises the existing
%      singleton*.
%
%      H = CALCI returns the handle to a new CALCI or the handle to
%      the existing singleton*.
%
%      CALCI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCI.M with the given input arguments.
%
%      CALCI('Property','Value',...) creates a new CALCI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calci_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calci_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calci

% Last Modified by GUIDE v2.5 27-Sep-2020 13:03:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calci_OpeningFcn, ...
                   'gui_OutputFcn',  @calci_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calci is made visible.
function calci_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calci (see VARARGIN)

% Choose default command line output for calci
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calci wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calci_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function screen_Callback(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screen as text
%        str2double(get(hObject,'String')) returns contents of screen as a double


% --- Executes during object creation, after setting all properties.
function screen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in number7.
function number7_Callback(hObject, eventdata, handles)
% hObject    handle to number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'7'));
% --- Executes on button press in number9.
function number9_Callback(hObject, eventdata, handles)
% hObject    handle to number9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'9'));
% --- Executes on button press in number8.
function number8_Callback(hObject, eventdata, handles)
% hObject    handle to number8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'8'));

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.screen,'String','');

% --- Executes on button press in number4.
function number4_Callback(hObject, eventdata, handles)
% hObject    handle to number4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'4'));

% --- Executes on button press in number6.
function number6_Callback(hObject, eventdata, handles)
% hObject    handle to number6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'6'));
% --- Executes on button press in number5.
function number5_Callback(hObject, eventdata, handles)
% hObject    handle to number5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'5'));

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A Selector
A=str2num(get(handles.screen,'String'));
Selector=1;
set(handles.screen,'String','');

% --- Executes on button press in number1.
function number1_Callback(hObject, eventdata, handles)
% hObject    handle to number1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'1'));

% --- Executes on button press in number3.
function number3_Callback(hObject, eventdata, handles)
% hObject    handle to number3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'3'));

% --- Executes on button press in number2.
function number2_Callback(hObject, eventdata, handles)
% hObject    handle to number2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'2'));

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global B Selector
B=str2num(get(handles.screen,'String'));
Selector=2;
set(handles.screen,'String','');

% --- Executes on button press in decimal.
function decimal_Callback(hObject, eventdata, handles)
% hObject    handle to decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if not(strcmp(get(handles.screen,'String'),''))
    S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'.'));
end
% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(get(handles.screen,'String'),'')
    set(handles.screen,'String','3.14');
end

% --- Executes on button press in number0.
function number0_Callback(hObject, eventdata, handles)
% hObject    handle to number0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(handles.screen,'String');
set(handles.screen,'String',strcat(S,'0'));

% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global C Selector
if strcmp(get(handles.screen,'string'),'')
    set(handles.screen,'String','-');
else
 C=str2num(get(handles.screen,'String'));
 Selector=3;
 set(handles.screen,'String','');
end
% --- Executes on button press in square.

function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(str2num(get(handles.screen,'String'))^2));
% --- Executes on button press in equals.
function equals_Callback(hObject, eventdata, handles)
% hObject    handle to equals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A B C D Selector
switch Selector
    case 1
        A=A/str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(A));
    case 2
         B=B*str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(B));
    case 3
         C=C-str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(C));
    case 4 
         D=D+str2num(get(handles.screen,'String'));
        set(handles.screen,'String',num2str(D));
        
end
% --- Executes on button press in root.
function root_Callback(hObject, eventdata, handles)
% hObject    handle to root (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.screen,'String',num2str(sqrt(abs(str2num(get(handles.screen,'String'))))));

% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global D Selector
D=str2num(get(handles.screen,'String'));
Selector=4;
set(handles.screen,'String','');

% --- Executes during object creation, after setting all properties.
function number7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
