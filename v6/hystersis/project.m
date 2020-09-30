function varargout = project(varargin)
% project M-file for project.fig
%      project, by itself, creates a new project or raises the existing
%      singleton*.
%
%      H = project returns the handle to a new project or the handle to
%      the existing singleton*.
%
%      project('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in project.M with the given input arguments.
%
%      project('Property','Value',...) creates a new project or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 05-Jun-2005 16:35:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Im = str2double(get(handles.edit1,'String'));
Pm = str2double(get(handles.edit2,'String'));
I = str2double(get(handles.edit3,'String'));
I=-I;
Pr = str2double(get(handles.edit4,'String'));
e=-1.5*Pm*I/(Im-I);
if Pr<e 
    errordlg('this curve dos not exist','Bad Input','modal')
elseif Pr>=Pm
     errordlg('this curve dos not exist','Bad Input','modal')
elseif -I>=Im
     errordlg('this curve dos not exist','Bad Input','modal')
else
       x=I:0.01:Im;
a=Pm*Im*Pr*I*(-Pm*I+I*Pr-Im*Pr+Pm*Im)/(Pm*I-I*Pr+Im*Pr)^2;
b=-Pm*Im/(Pm*I-I*Pr+Im*Pr)*I;
c=Pm*Im*Pr/(Pm*I-I*Pr+Im*Pr);
axes(handles.axes1)
hold off
y=a./(x+b)+c;
plot(x,y);
grid on
hold on
plot(-x,-y);
grid on
hold on
z1=(Im+b)*(Im+b);
D1=-a/z1;
z2=(I+b)*(I+b);
D2=-a/z2;
A=-D2*Pm^2*(Im+I)^2/(-Pm+D2*I+Im*D2)^2;
B=(D2*I^2+Im*D2*I+Pm*Im)/(-Pm+D2*I+Im*D2);
C=D2*Pm*(Im+I)/(-Pm+D2*I+Im*D2);
D12=-A/((B+Im)*(B+Im));
X=-I:0.1:Im;
Y=A./(B+X)+C;
axes(handles.axes1)
plot(X,Y);
grid on
hold on
plot(-X,-Y);
grid on
hold on
t=0:0.001:pi/2;
i=-A./(C-Pm*sin(t))-B;
axes(handles.axes3)
hold off
plot(t,i);
grid on
hold on
t=pi/2:0.001:pi;
i=-a./(c-Pm*sin(t))-b;
plot(t,i);
hold on
t=pi:0.001:3*pi/2;
i=A./(C+Pm*sin(t))+B;
plot(t,i);
hold on
t=3*pi/2:0.001:2*pi;
i=a./(c+Pm*sin(t))+b;
plot(t,i);
hold on
t=2*pi:0.001:7;
i=-A./(C-Pm*sin(t))-B;
plot(t,i);
t=0:0.001:7;
z=Pm*sin(t);
axes(handles.axes2)
hold off
plot(t,z);
grid on
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

user_response = modaldlg('Title','Confirm Close');
switch lower(user_response)
case 'no'
	% take no action
case 'yes'
	% Prepare to close GUI application window
	%                  .
	%                  .
	%                  .
	delete(handles.figure1)
end
