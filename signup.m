function varargout = signup(varargin)
% SIGNUP MATLAB code for signup.fig
%      SIGNUP, by itself, creates a new SIGNUP or raises the existing
%      singleton*.
%
%      H = SIGNUP returns the handle to a new SIGNUP or the handle to
%      the existing singleton*.
%
%      SIGNUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIGNUP.M with the given input arguments.
%
%      SIGNUP('Property','Value',...) creates a new SIGNUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before signup_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to signup_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help signup

% Last Modified by GUIDE v2.5 23-May-2024 22:42:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @signup_OpeningFcn, ...
                   'gui_OutputFcn',  @signup_OutputFcn, ...
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


% --- Executes just before signup is made visible.
function signup_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to signup (see VARARGIN)

% Choose default command line output for signup
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes signup wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = signup_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%注册界面
function pushbutton1_Callback(hObject, eventdata, handles)
accnum=get(handles.edit2,'string');
root=get(handles.edit1,'string');
fid=fopen('land.txt','a+'); %以追加的方式打开文件
fprintf(fid,'%s ',accnum); %将账号和一个空格符写入文件
fprintf(fid,'%s\n',root);%将密码写入文件
h=dialog('name','关于...','position',[500 500 200 70]);%定义提示框
uicontrol('parent',h,'style','text','string','注册成功！','position',[50 40 120 20],'fontsize',12);
uicontrol('parent',h,'style','pushbutton','position',...
   [80 10 50 20],'string','确定','callback','delete(gcbf)');
function pushbutton2_Callback(hObject, eventdata, handles)
close(signup);
clc;clear;close all;
set(signin,'Visible','on');



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
