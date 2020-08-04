%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{style}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
%\usepackage{hyperref} % Required for links
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem} % for setting list indent

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{42b9f4} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{subsubheadings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[8]{ % Defines the command for the main heading
\color{headings}
% name
\begin{minipage}[t][.8cm][t]{.58\textwidth}
%\vspace{1 pt}
\raggedright{ % Center the name
\fontsize{48pt}{48pt} % Font size
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 % First name font
\color{black}
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information

\end{minipage}
% phone / email
\begin{minipage}[t][.8cm][t]{.25\textwidth}
\vspace{-28 pt} % Hacky fix for awkward extra vertical space
%\centering{ % Center the contact information
\color{subsubheadings} % Use the headings color
% \fontspec[Path = fonts/raleway/]{Raleway-Medium}
\fontspec[Path = fonts/lato/]{Lato-Bol}
\fontsize{22}{18}\selectfont 
#3 
\vspace{3 pt}
\\
#4
\end{minipage}
% phone / email
\begin{minipage}[t][.8cm][t]{.25\textwidth}
\vspace{-28 pt} % Hacky fix for awkward extra vertical space
%\centering{ % Center the contact information
\color{subsubheadings} % Use the headings color
% \fontspec[Path = fonts/raleway/]{Raleway-Medium}
\fontspec[Path = fonts/lato/]{Lato-Bol}
\fontsize{22}{18}\selectfont 
#5
\vspace{3 pt}
\\
#6
% Contact information font
\end{minipage}
%\begin{minipage}[t][.8cm][t]{.1\textwidth}
%\vspace{-20 pt} % Hacky fix for awkward extra vertical space
%\centering{ % Center the contact information
%\color{subsubheadings} % Use the headings color
% \fontspec[Path = fonts/raleway/]{Raleway-Medium}
%\fontspec[Path = fonts/lato/]{Lato-Bol}
%\fontsize{22}{18}\selectfont 
#7
%\vspace{6 pt}
\\
#8
\\
% Contact information font
%\end{minipage}
\vspace{-25pt} % Reduce whitespace before  the rule slightly
\noindent\makebox[\linewidth]{\color{subsubheadings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-10pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles
\usepackage{textcase}
\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright \bfseries }{}{0em}{} % chandan removed \uppercase

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries }{}{0em}{} % removed \uppercase

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont} % removed \uppercase

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{subsubheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}[leftmargin=0.2in]\itemsep1pt \parskip0pt \parsep0pt }
{\end{itemize}\vspace{-\topsep}}
