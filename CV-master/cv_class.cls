% REFERENCED SOURCE - https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html

% !TEX program = XeLaTeX
% ABOVE LINE IS REQUIRED - DO NOT REMOVE -  FOR THE USE OF MODERN FONTS - ELSE YOU WILL RECEIVE A COMPILATION ERROR

\NeedsTeXFormat{LaTeX2e} % Version of LatTeX used
\ProvidesClass{cv_class}[10/06/2016 My custom CV class]	% {package name}[ package description ]

\LoadClass{article}

\RequirePackage{fontspec}			% Can specify font family
\RequirePackage{xcolor}
\RequirePackage{titlesec} 			% Allows header style customisation
\RequirePackage{geometry}			% Edit margins

\geometry{top = 2cm, bottom = 2cm} 		% Edit the margin sizes
\definecolor{primary}{rgb}{.47, .07, .18} 	% Primary colour of the document theme
\definecolor{greyedout}{rgb}{.38, .38, .38}	% Greyed out custom colour
\definecolor{pagecolour}{rgb}{.99,.99, .93}	% Page colour

\pagecolor{pagecolour}				% Set the page colour

\setsansfont{Trebuchet MS}
\renewcommand{\familydefault}{\sfdefault} % By default use sans serif font

% --------------------------------------------------------------
% NAME AND CONTACT INFORMATION
% --------------------------------------------------------------
% NAME
\newcommand{\name}[1]
{
	\centerline{\bf \Huge{#1} } % Centered large font
\vspace{0.5em}
}
% JOB TITLE
\newcommand{\jobtitle}[1]
{
	\centerline{\textcolor{primary}{\bf \Large{#1}} }
}
% ADDRESS
\newcommand{\address}[5]
{
	\centerline
	{\textcolor{greyedout}
		{
		#1 {\large \textperiodcentered}	% Street
		#2 {\large \textperiodcentered}	% City
		#3 {\large \textperiodcentered}	% County
		#4 {\Large \textperiodcentered}	% Postcode
		#5 {\Large}				% Country
		}
	}
}
% CONTACT INFO
\newcommand{\contact}[4]
{
	\centerline
	{\small
		#1 {}	% Mobile number
		#2 {}	% Email
		#3 {}  % Website
		#4 {}  % Linked In
	}
}

% --------------------------------------------------------------
% Allow dates to be added to section  headers
% --------------------------------------------------------------
\newcommand{\datedsection}[2] % [the number of arguments]
{
	\section[#1]{#1 \hfill {\small \textcolor{greyedout}{#2}} }
}
\newcommand{\datedsubsection}[2]
{
	\subsection[#1]{#1 \hfill {\small \textcolor{greyedout}{#2}} }
}

% --------------------------------------------------------------
% SECTION HEADING CUSTOMISATION
% --------------------------------------------------------------
\titleformat{\section}						% Customise the \section command
	{\Large \scshape \color{primary} \raggedright \bf}	% Make the \section headers large (\LARGE),
									% small capitals (\scshape), colour, left aligned (\raggedright), and bold font (\bf)
	{}{0em}							% Can be used to give a prefix to all sections, like `Section ...'
	{}								% Can be used to insert code before the heading
	[\titlerule]							% Insert a horizontal line after the heading
	
% --------------------------------------------------------------
% SUBSECTION HEADING CUSTOMISATION
% --------------------------------------------------------------
\titleformat{\subsection}
	{\large \scshape \raggedright}
	{}{0em}
	{}

% --------------------------------------------------------------
% SUBSUBSECTION HEADING CUSTOMISATION
% --------------------------------------------------------------	
\titleformat{\subsubsection}
	{\normalsize  \raggedright}
	{}{0em}
	{}
	
% --------------------------------------------------------------
% SKILLS
% --------------------------------------------------------------
\newcommand{\skill}[2]
{
	\flushleft	% Force left alignment
	{
		{\bf{#1} }
		#2
	}
}

% --------------------------------------------------------------
% INTERESTS // EDUCATION
% --------------------------------------------------------------
\newcommand{\interest}[2]
{
	\flushleft	% Force left alignment
	{
		{\bf{#1} }
		#2
	}
}

% --------------------------------------------------------------
% PROJECTS
% --------------------------------------------------------------	
\newcommand{\projectsignature}[2]
{
	\subsection[#1]
	{
		#1 \hfill			% Project title
		{\small \textup{#2} }	% Project Github repo % \textup - will remove all caps
	}
}

% --------------------------------------------------------------
% EMPLOYMENT
% --------------------------------------------------------------	
\newcommand{\jobsignature}[5]
{

	\subsection[#1]
	{  \vspace{-1em}
		{ \flushleft
			\large{\scshape{ \bf{#1} }} \hfill		% Company
			{\small \textcolor{greyedout}{#2} }	% Location
		}	
		\centerline
		{
			\normalsize \textup{#3 \hfill}		% Job role
			{\small \textcolor{greyedout}{#4} }	% Time Period
		} \flushleft \normalsize \textup{#5}	% Skills
	}
	%vspace{-0.5em}
}

% --------------------------------------------------------------
% WORK ITEMS
% --------------------------------------------------------------	
% Work items is a a list of bullet points detailing the relevant skills/experience gained on the job
\newcommand{\workitems}[3]
{
	\begin{itemize}
	\item #1
	\item #2
	\item #3
	\end{itemize}
}

% --------------------------------------------------------------
% TABBED ITEM LIST	
% --------------------------------------------------------------
\newcommand{\tabitemize}[4]
{\small
	\\ 
	\vspace{.1cm}
	\hspace{1.5cm} \emph{Key Modules} \\
	\vspace{.1cm}
	\hspace{1.5cm} $\circ$ #1 \\
	\vspace{.1cm}
	\hspace{1.5cm} $\circ$ #2 \\
	\vspace{.1cm}
	\hspace{1.5cm} $\circ$ #3 \\
	\vspace{.1cm}
	\hspace{1.5cm} $\circ$ #4
}

% --------------------------------------------------------------
% MISCELLANEOUS COMMANDS
% --------------------------------------------------------------	
\newcommand{\removelinespacing}
{
	\vspace{-5mm}
}
