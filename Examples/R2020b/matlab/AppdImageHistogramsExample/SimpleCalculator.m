function varargout = SimpleCalculator(varargin)
% SIMPLECALCULATOR MATLAB code for SimpleCalculator.fig
%      SIMPLECALCULATOR, by itself, creates a new SIMPLECALCULATOR or raises the existing
%      singleton*.
%
%      H = SIMPLECALCULATOR returns the handle to a new SIMPLECALCULATOR or the handle to
%      the existing singleton*.
%
%      SIMPLECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLECALCULATOR.M with the given input arguments.
%
%      SIMPLECALCULATOR('Property','Value',...) creates a new SIMPLECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimpleCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimpleCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimpleCalculator

% Last Modified by GUIDE v2.5 28-Dec-2020 09:48:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimpleCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @SimpleCalculator_OutputFcn, ...
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


% --- Executes just before SimpleCalculator is made visible.
function SimpleCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimpleCalculator (see VARARGIN)

% Choose default command line output for SimpleCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimpleCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimpleCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Add.
function Add_Callback(hObject, eventdata, handles)
% hObject    handle to Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.x,'string'));
b=str2num(get(handles.y,'string'));
c=a+b;
set(handles.z,'string',c);

% --- Executes on button press in Minus.
function Minus_Callback(hObject, eventdata, handles)
% hObject    handle to Minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.x,'string'));
b=str2num(get(handles.y,'string'));
c=a-b;
set(handles.z,'string',c);

% --- Executes on button press in Mult.
function Mult_Callback(hObject, eventdata, handles)
% hObject    handle to Mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.x,'string'));
b=str2num(get(handles.y,'string'));
c=a*b;
set(handles.z,'string',c);

% --- Executes on button press in Mod.
function Mod_Callback(hObject, eventdata, handles)
% hObject    handle to Mult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.x,'string'));
b=str2num(get(handles.y,'string'));
c=mod(a,b);
set(handles.z,'string',c);


% --- Executes on button press in Div.
function Div_Callback(hObject, eventdata, handles)
% hObject    handle to Div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2num(get(handles.x,'string'));
b=str2num(get(handles.y,'string'));
c=a/b;
set(handles.z,'string',c);


function z_Callback(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z as text
%        str2double(get(hObject,'String')) returns contents of z as a double


% --- Executes during object creation, after setting all properties.
function z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
