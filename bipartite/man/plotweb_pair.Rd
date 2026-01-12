\encoding{UTF-8}
\name{plotweb_pair}
\alias{plotweb_pair}

\title{Visualize two bipartite interaction matrices (e.g. foodwebs at two locations)}
\description{
Two 2-D (interaction) matrices are plotted as a two-layer bipartite graph.
}
\usage{
plotweb_pair(web1,
             web2,
             middle = "higher",
             sort_by = 1,
             sorting = "normal",
             higher_abundances = NULL,
             lower_abundances = NULL,
             add_higher_abundances = NULL,
             add_lower_abundances = NULL,
             scaling = "absolute",
             font = NULL,
             family = NULL,
             srt = 0,
             higher_italic = FALSE,
             lower_italic = FALSE,
             text_size = 1,
             x_lim = c(0, 1),
             y_lim = c(0, 1),
             lower_color = "black",
             lower_border = "same",
             add_lower_color = "red",
             higher_color = "black",
             higher_border = "same",
             add_higher_color = "red",
             higher_text_color = "black",
             lower_text_color = "black",
             horizontal = FALSE,
             link_color = "lower",
             link_border = "same",
             link_alpha = 0.6,
             curved_links = FALSE,
             arrow = "no",
             spacing = "auto",
             mar = c(1, 1, 1, 1),
             mai = NULL,
             plot_axes = FALSE)
}

\arguments{
  \item{web1}{The (interaction) matrix, that is plotted on top (on the left).}
  \item{web2}{The second layer (e.g. temporal or spatial) web. Common species between the webs must have the exact same name.}
  \item{middle}{\code{"higher"} or \code{"lower"}. 
                Defining which trophic level should be plotted in the middle of the graph.}
  \item{sort_by}{\code{1} or \code{2} to sort the species based on their 
                 order in \code{web1} or \code{web2} respectively.}
  \item{sorting}{Sorting option passed to the \code{\link{sortweb}} function. 
                 Applies only to web specified with \code{sort_by}. 
                 The default \code{"normal"} doesn't reorder the web.}
  \item{higher_abundances}{List containing 2 vectors with independent abundance estimates
                           for the higher trophic level of both webs.
                           \code{NULL} if none exist}
  \item{higher_abundances}{List containing 2 vectors with independent abundance estimates
                           for the lower trophic level of both webs.
                           \code{NULL} if none exist}
  \item{add_higher_abundances}{List containing 2 vectors with 
                               additional abundance (e.g. unparasitised hosts)
                               for the higher trophic level of both webs.
                               \code{NULL} if none exist}
  \item{add_lower_abundances}{List containing 2 vectors with 
                              additional abundance (e.g. unparasitised hosts)
                              for the lower trophic level of both webs.
                              \code{NULL} if none exist}
  \item{scaling}{\code{"absoulte"} scales the boxes and links in 
                 relation to the most abundant species. 
                 \code{"relative"} scales the boxes and links, 
                 so that they largest available plotting area.}
  \item{font}{An integer which specifies which font to use for the labels.
              See \code{\link[graphics]{par}}.}
  \item{family}{The name of a font family for drawing the labels.
                See \code{\link[graphics]{par}}.}
  \item{srt}{Orientation of the labels in degrees.
             With the default \code{0}, labels are horizontally aligned. }
  \item{higher_italic}{If set to \code{TRUE}, 
                       the labels of the higher species are plotted in italics.
                       (Default: \code{FALSE})}
  \item{lower_italic}{If set to \code{TRUE},
                      the labels of the lower species are plotted in italics.
                      (Default: \code{FALSE})}
  \item{text_size}{Factor by which the size of the label text should be scaled.
                   Values < 1 makes them smaller, values > 1 makes them greater.
                   (Default: \code{1})}
  \item{x_lim}{Vector with 2 numerical values.
               The range in which to plot on the x-axis.
               (Default: \code{c(0, 1)})}
  \item{y_lim}{Vector with 2 numerical values.
               The range in which to plot on the y-axis.
               (Default: \code{c(0, 1)})}
  \item{higher_color}{A single color or a list of colors used to plot the higher species (columns) boxes. (Default: \code{"black"})}
  \item{higher_border}{Either \code{"same"} or a single color or a list of colors used to plot the higher species (columns) boxes borders.
                      If \code{"same"}, the borders have the same color as the corresponding boxes.}
  \item{higher_add_color}{Only used when higher additional abundances are defined. 
                          A single color or a list of colors used to plot the higher (column) additional boxes. (Default: \code{"red"})}
  \item{higher_text_color}{A single color or a list of colors used to plot the lower species (rows) labels. (Default: \code{"black"})}
  \item{lower_color}{A single color or a list of colors used to plot the lower species (rows) boxes. (Default: \code{"black"})}
  \item{lower_border}{Either "same" or a single color or a list of colors used to plot the lower species (rows) boxes borders.
                      If "same", the borders have the same color as the corresponding boxes.}
  \item{lower_add_color}{Only used when lower additional abundances are defined. 
                         A single color or a list of colors used to plot the lower (row) additional boxes. (Default: "red")}
  \item{lower_text_color}{A single color or a list of colors used to plot the lower species (rows) labels. (Default: \code{"black"})}
  \item{horizontal}{Boolean indicating whether the connection between
                    the boxes and the label texts should be plotted horizontally.
                    If TRUE the two graphs are aligned horizontally as well. 
                    (Default: FALSE)}
  \item{link_color}{}
  \item{link_border}{}
  \item{link_alpha}{Number between 0.0 and 1.0 setting the transparency of the links. 
                    0 means full transparency 1 means full opacity. (Default: 0.5)}
  \item{curved_links}{If \code{FALSE} links are plotted as straight lines
                      otherwise they are curved. (Default: \code{FALSE})}
  \item{arrow}{Display type of connection between higher and lower boxes, options are 
    \itemize{
      \item \code{"no"} (Default)
      \item \code{"up"}
      \item \code{"down"}
      \item \code{"both"}
      \item \code{"up.center"}
      \item \code{"down.center"}
      \item \code{"both.center"}
    }
  }
  \item{spacing}{}
  \item{mar}{A numerical vector of the form \code{c(bottom, left, top, right)} 
             which gives the number of lines of margin to be specified 
             on the four sides of the plot. 
             The default is NULL which takes the global setting from \code{par()}. }
  \item{mai}{A numerical vector of the form \code{c(bottom, left, top, right)}
             which gives the margin size specified in inches.
             Please note, 
             that the margin is increased so that the labels are always visible in the plot.}
  \item{plot_axes}{Indicates whether the x- and y-axis should be drawn on the plots.
                   (Default: \code{FALSE})}
}

\value{
  Returns a window with the two bipartite graphs aligned on top or next to each other.
}

\note{
}

\author{ Tobias Bauer \email{tobias.bauer-2@uni-hamburg.de} }

\seealso{ 
  For a different plot of food webs see  \code{\link{visweb}}.

  For plotting a single web see \code{\link{plotweb}}.
}
\examples{
plotweb_pair(Safariland, vazarr, horizontal = TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ package }


