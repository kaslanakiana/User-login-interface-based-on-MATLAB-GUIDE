function varargout = signin(varargin)
% SIGNIN MATLAB code for signin.fig
%      SIGNIN, by itself, creates a new SIGNIN or raises the existing
%      singleton*.
%
%      H = SIGNIN returns the handle to a new SIGNIN or the handle to
%      the existing singleton*.
%
%      SIGNIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIGNIN.M with the given input arguments.
%
%      SIGNIN('Property','Value',...) creates a new SIGNIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before signin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to signin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help signin

% Last Modified by GUIDE v2.5 23-May-2024 21:41:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @signin_OpeningFcn, ...
                   'gui_OutputFcn',  @signin_OutputFcn, ...
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


% --- Executes just before signin is made visible.
function signin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to signin (see VARARGIN)

% Choose default command line output for signin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes signin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = signin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%登录界面
function pushbutton1_Callback(hObject, eventdata, handles)
accnum=get(handles.edit3,'string'); 
root=get(handles.edit4,'string');
fid=fopen('land.txt','r'); %打开文件
line=fgetl(fid); %获取文件中的一行
while ischar(line) %如果这一行中有字符
    s=regexp(line,' ','split'); %将这一行以空格为界拆分成数组
    a=cell2mat(s(1));
    b=cell2mat(s(2));
    if strcmp(a,accnum) == 0 && strcmp(b,root)==0 %如果账号和密码都对
        close(signin); %关闭界面，登录界面的文件名，不加后缀名
        clc;clear;close all;
        set(SegmentNet_EvalTool,'Visible','on'); %打开界面，主界面的文件名，不加后缀名
        break %跳出循环
    end
    line=fgetl(fid); %获取下一行
end
function pushbutton2_Callback(hObject, eventdata, handles)
close(signin);
clc;clear;close all;
set(signup,'Visible','on');
