% Created by Alexander Baker, original repo here: https://github.com/AlexLBaker/LaTeX-Cover-Letter

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover_class}[2023/03/27 Custom Cover Letter Class]

\LoadClass[12pt, letterpaper]{article}

% Required Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{hyperref}
\RequirePackage{fontawesome}
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage{enumitem}

% Geometry and Hyperref Settings
\geometry{left=1.5cm,right=1.5cm,top=2cm,bottom=2cm} % Adjust margins
\hypersetup{hidelinks}

% Custom Colors
\definecolor{forestgreen}{rgb}{0.13, 0.55, 0.13}
\definecolor{linkedinblue}{rgb}{0, 0.47, 0.71}
\definecolor{orange}{rgb}{1, 0.5, 0}
\definecolor{wine}{rgb}{0.44, 0.18, 0.25}
\definecolor{burgundy}{rgb}{0.6, 0.18, 0.25}

% Commands
\newcommand{\coverinfo}[5]{%
    \begin{minipage}[t]{0.32\textwidth}
        \vspace{-15pt}
        \renewcommand{\arraystretch}{1}
        \hspace{-50pt} 
        \begin{tabular}{l@{\hspace{4pt}}l}
            \fontsize{14pt}{10pt}\selectfont\textcolor{forestgreen}{\faEnvelope} & \fontsize{12pt}{12pt} \selectfont #1\\    
            \fontsize{14pt}{10pt}\selectfont\textcolor{orange}{\faPhone} & \fontsize{12pt}{12pt}\selectfont #2\\
            \fontsize{16pt}{10pt}\selectfont\textcolor{linkedinblue}{\faLinkedin} & \fontsize{12pt}{12pt}\selectfont #3\\
            \fontsize{14pt}{10pt}\selectfont\textcolor{black}{\faGithub} & \fontsize{12pt}{12pt}\selectfont #4\\
            \fontsize{15pt}{10pt}\selectfont\textcolor{wine}{\faMapMarker} & \fontsize{12pt}{12pt}\selectfont #5
        \end{tabular}
    \end{minipage}
}

\newcommand{\coverheader}[2]{%
    \noindent\begin{minipage}[t]{0.65\textwidth}
        \vspace{-15pt}
        \textcolor{burgundy}{\textbf{\Huge #1}}\\
        \\
        \textbf{\large #2}
    \end{minipage}
}