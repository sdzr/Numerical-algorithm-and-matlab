function varargout = videoplayer(varargin)
% VIDEOPLAYER MATLAB code for videoplayer.fig
%      VIDEOPLAYER, by itself, creates a new VIDEOPLAYER or raises the existing
%      singleton*.
%
%      H = VIDEOPLAYER returns the handle to a new VIDEOPLAYER or the handle to
%      the existing singleton*.
%
%      VIDEOPLAYER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIDEOPLAYER.M with the given input arguments.
%
%      VIDEOPLAYER('Property','Value',...) creates a new VIDEOPLAYER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before videoplayer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to videoplayer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help videoplayer

% Last Modified by GUIDE v2.5 03-May-2016 19:54:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @videoplayer_OpeningFcn, ...
                   'gui_OutputFcn',  @videoplayer_OutputFcn, ...
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


% --- Executes just before videoplayer is made visible.
function videoplayer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to videoplayer (see VARARGIN)
pos=[0 0 0 0];
MovieControl=actxcontrol('AMOVIE.ActiveMovieControl.2',pos);
handles.MovieControl=MovieControl;
mp=handles.MovieControl.MediaPlayer;
% Choose default command line output for videoplayer
handles.output = mp;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes videoplayer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = videoplayer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName PathName]=uigetfile('*.*','plesea choose a video file!');
if  ~FileName
    return
end
mp=handles.MovieControl.MediaPlayer;
Open(mp,[PathName FileName]);
% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
units=get(handles.figure1,'units');
set(handles.figure1,'units','pixels');
pos=get(handles.figure1,'position');
set(handles.figure1,'units',units);
pos=[0 0 pos(3:4)];
move(handles.MovieControl,pos);