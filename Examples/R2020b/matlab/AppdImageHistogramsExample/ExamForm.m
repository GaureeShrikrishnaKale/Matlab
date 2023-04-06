function varargout = ExamForm(varargin)
clc;
% EXAMFORM MATLAB code for ExamForm.fig
%      EXAMFORM, by itself, creates a new EXAMFORM or raises the existing
%      singleton*.
%
%      H = EXAMFORM returns the handle to a new EXAMFORM or the handle to
%      the existing singleton*.
%
%      EXAMFORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXAMFORM.M with the given input arguments.
%
%      EXAMFORM('Property','Value',...) creates a new EXAMFORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ExamForm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ExamForm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ExamForm

% Last Modified by GUIDE v2.5 22-Dec-2020 15:02:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ExamForm_OpeningFcn, ...
                   'gui_OutputFcn',  @ExamForm_OutputFcn, ...
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


% --- Executes just before ExamForm is made visible.
function ExamForm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ExamForm (see VARARGIN)

% Choose default command line output for ExamForm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ExamForm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ExamForm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Name_Callback(hObject, eventdata, handles)
% hObject    handle to Name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Name as text
%        str2double(get(hObject,'String')) returns contents of Name as a double

get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function age_Callback(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of age as text
%        str2double(get(hObject,'String')) returns contents of age as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function College_Callback(hObject, eventdata, handles)
% hObject    handle to College (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of College as text
%        str2double(get(hObject,'String')) returns contents of College as a double

get(hObject,'String')
% --- Executes during object creation, after setting all properties.
function College_CreateFcn(hObject, eventdata, handles)
% hObject    handle to College (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Mname_Callback(hObject, eventdata, handles)
% hObject    handle to Mname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mname as text
%        str2double(get(hObject,'String')) returns contents of Mname as a double
get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Mname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function year_Callback(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of year as text
%        str2double(get(hObject,'String')) returns contents of year as a double
get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Sem_Callback(hObject, eventdata, handles)
% hObject    handle to Sem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sem as text
%        str2double(get(hObject,'String')) returns contents of Sem as a double
get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Sem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CGPA_Callback(hObject, eventdata, handles)
% hObject    handle to CGPA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CGPA as text
%        str2double(get(hObject,'String')) returns contents of CGPA as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function CGPA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CGPA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Branch_Callback(hObject, eventdata, handles)
% hObject    handle to Branch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Branch as text
%        str2double(get(hObject,'String')) returns contents of Branch as a double
get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Branch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Branch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Catagory_Callback(hObject, eventdata, handles)
% hObject    handle to Catagory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Catagory as text
%        str2double(get(hObject,'String')) returns contents of Catagory as a double
get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Catagory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Catagory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fee_Callback(hObject, eventdata, handles)
% hObject    handle to Fee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fee as text
%        str2double(get(hObject,'String')) returns contents of Fee as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function Fee_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Back_Callback(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Back as text
%        str2double(get(hObject,'String')) returns contents of Back as a double
 get(hObject,'String')

% --- Executes during object creation, after setting all properties.
function Back_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ID_Callback(hObject, eventdata, handles)
% hObject    handle to ID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ID as text
%        str2double(get(hObject,'String')) returns contents of ID as a double
str2double(get(hObject,'String'))

% --- Executes during object creation, after setting all properties.
function ID_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ID (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
