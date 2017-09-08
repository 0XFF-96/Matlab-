function varargout = resolution_demo(varargin)
%RESOLUTION_DEMO M-file for resolution_demo.fig
%      RESOLUTION_DEMO, by itself, creates a new RESOLUTION_DEMO or raises the existing
%      singleton*.
%
%      H = RESOLUTION_DEMO returns the handle to a new RESOLUTION_DEMO or the handle to
%      the existing singleton*.
%
%      RESOLUTION_DEMO('Property','Value',...) creates a new RESOLUTION_DEMO using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to resolution_demo_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      RESOLUTION_DEMO('CALLBACK') and RESOLUTION_DEMO('CALLBACK',hObject,...) call the
%      local function named CALLBACK in RESOLUTION_DEMO.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resolution_demo

% Last Modified by GUIDE v2.5 22-Aug-2012 07:50:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resolution_demo_OpeningFcn, ...
                   'gui_OutputFcn',  @resolution_demo_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before resolution_demo is made visible.
function resolution_demo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for resolution_demo
handles.output = hObject;
global load
load=0;  %% 没有载入图像
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resolution_demo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resolution_demo_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Load_Image_Callback(hObject, eventdata, handles)
% hObject    handle to Load_Image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname, filterindex] = uigetfile( ...
       {'*.bmp;*.tif;*.jpg;*.png', 'All Image Files (*.bmp, *.tif, *.jpg, *.png)';
        '*.bmp',  'BMP-files (*.bmp)'; ...
        '*.tif','TIFF-files (*.tif)'; ...
        '*.jpg','JPEG-files (*.jpg)'; ...
        '*.png','PNG-files (*.png)'; ...
        '*.*',  'All Files (*.*)'}, ...
        'Pick a file');
global image0 image1 cimage csize load map
info=imfinfo([pathname, filename]);
[image0,map]=imread([pathname, filename]);
csize=size(image0);
cimage = image0;  %% cimage: 当前图像
image1=image0;  %% 专用于空间分辨率减半的图像数据
set(handles.text1,'String', [filename,' (',info.ColorType,')']);  %%图像名称及数据类型
axes(handles.axes1)
imshow(image0,map, 'InitialMagnification','fit'); axis off ;
set(handles.text7, 'String', [num2str(csize(2)),'*',num2str(csize(1))]);
set(handles.pushbutton1, 'enable', 'on');
set(handles.pushbutton2, 'enable', 'off');
set(handles.popupmenu1, 'enable', 'on');
if length(csize)==3  %% 彩色图像
    set(handles.popupmenu1,'String',{'24b','16b','8b','16','8','4','2'});
else         %% 灰度图像
    set(handles.popupmenu1,'String',{'8b','16','8','4','2'});
end
contents = get(handles.popupmenu1,'String');
set(handles.popupmenu1, 'value', 1);
selected_color=contents{1}; %颜色数
set(handles.text5,'string',selected_color);
load=1; %% 已载入图像

% --------------------------------------------------------------------
function Close_Callback(hObject, eventdata, handles)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf)

% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
String={...
        '       Resolution Demo   '
        '       created by Li Zhi   '
        '        August 21, 2012   '};    
        msgbox(String);


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global csize cimage load map
pos=round(get(gca,'currentpoint'));
x=pos(1); y=pos(3);  %% 鼠标位置
if load==1 & x<=csize(2) & x>=1 & y<=csize(1) & y>=1
    set(handles.text2,'String', ['(', num2str(x),',', num2str(y),')']);
    color=cimage(y, x,:);
    set(handles.text3, 'String', num2str(color));
else 
    set(handles.text2,'String', '');
    set(handles.text3, 'String', '');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image1 cimage csize
set(handles.pushbutton2, 'enable', 'on');
image1=imresize(image1, 0.5,'bilinear');
cimage=imresize(cimage, 0.5,'bilinear');
csize=size(cimage);
axes(handles.axes1);
imshow(cimage,'InitialMagnification','fit'); axis off ;
set(handles.text7, 'String', [num2str(csize(2)),'*',num2str(csize(1))]);
button1=1;  % 已进行过空间分辨率减半
if csize(1)<8 | csize(2)<8   % 空间分辨率太小，停止减半
    set(handles.pushbutton1,'enable','off');
end

% --- reload the original image.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image0 image1 csize cimage
image1=image0;
cimage=image0;
axes(handles.axes1);
imshow(cimage,'InitialMagnification','fit'); axis off ;
csize=size(cimage);
set(handles.text7, 'String', [num2str(csize(2)),'*',num2str(csize(1))]);
set(handles.pushbutton1, 'enable', 'on');
set(handles.pushbutton2, 'enable', 'off');
set(handles.popupmenu1,'value',1);
contents = get(handles.popupmenu1,'String');
selected_color=contents{1}; %颜色数
set(handles.text5,'string',selected_color);

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image1 csize cimage
contents = get(hObject,'String');
num=get(hObject,'Value');  %选中第几项
selected_color=contents{num}; %颜色数
if num==1
    cimage=image1;
else
    cimage=popup_call(csize, selected_color, image1);  %处理颜色分辨率
end
axes(handles.axes1);
imshow(cimage,'InitialMagnification','fit'), axis off
set(handles.text7, 'String', [num2str(csize(2)),'*',num2str(csize(1))]);
set(handles.text5,'string',selected_color); 

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%-----------------------------------------------------------------
function cimage=popup_call(csize, selected_color, image)
if  length(csize)==3  %% 彩色图像  
        switch selected_color
            case '16b'
                [X,map] = rgb2ind(image, 65536);            
            case '8b'
                [X, map]= rgb2ind(image, 256);
            case '16'
                [X, map]= rgb2ind(image, 16);
            case '8'
                [X, map]= rgb2ind(image, 8);
            case '4'
                [X, map]= rgb2ind(image, 4);
            case '2'
                cimage=im2bw(image);
        end
        if ~strcmp(selected_color,'2')
            cimage=ind2rgb(X, map);
            cimage=uint8(cimage*255);
        end
    else  %% 灰度图像
        switch selected_color
            case '16'
                X=round(floor(double(image)/16)/15*255);
                cimage=uint8(X);
            case '8'
                X=round(floor(double(image)/32)/7*255);
                cimage=uint8(X);
            case '4'
                X=round(floor(double(image)/64)/3*255);
                cimage=uint8(X);
            case '2'
                 %level = graythresh(image);
                 cimage = im2bw(image);
                 %cimage = uint8(cimage*255);
        end        
    end