# vb.cls

A LaTeX document class implementing [VB's style requirements](http://www.hmvb.org/apclf.doc).

# Format

## General

- 4 pages maximum (shouldn't be much less)
- Additional page describing work done by each individaul
- 12pt Times
- Single spaced
- 2 columns, except for title page (including abstract)
- Negative exponents should be used for units (e. g. ms<sup>-1</sup>instead of m/s)
- 2.54 cm margin
- 1.27 cm gutter (space between columns)
- Headers
  - 12pt Times italic
  - None on page 1
  - Even pages: author
  - Odd pages: title (title cased)
- Page numbers in headers, book style (left on even pages, right on odd pages)

## Title page

### Title

- 20pt Times
- Small caps

### Authors

- One per line
- First initial, last name
- 12pt Times
- Small caps
- Role on next line, 9pt Times italic

### Abstract

- Brief description of most significant result

## Citations

- Err on the side of too many citations
- Citations go in final section ("sources")
- 9pt Times italic
- `<last name>, <first inital>. <title>, <publisher>, <date>`
- Sorted alphabetically by last name
- Sources must have a name attached
- Inline citations
  - If directly referring to the work in a sentence: `Lorem ipsum dolor (<year>) sit amet`
  - Referring to a fact from a work: `Lorem ipsum dolor sit amet. (<names>, <year>).`
  - With one author: `(<name>, <year>)`
  - With two authors: `(<name> and <name>, <year>)`
  - With three or more authros: `(<name> et al, <year>)`
- Principal researcher's name goes first

## Graphs

- Title
- Axis labels
  - 10pt Times
  - Labels should align with axis direction
  - `<symbol> (<unit>) →`
- Numbers should be horizontal
- Axes scaled in multiples of 1, 2, or 5
- Caption
  - 9pt Times
  - Same width as graph, justified
  - First line indented 0.762 cm (0.3 in)
  - 4-5 lines at most
  - **`Fig. <number>. <title>`**` <text>`
- Data points
  - Empty circles (○)
  - 3-5 pt
  - Error bars in two directions on all data points
  - If bars aren't visible, discuss in caption
- Border: 3/4 pt solid black
- Black and greys only (no colour)
- No background
- Grey grid lines permitted
- Optional line of best fit
- Legend if more than one plot
- One column except in very special circumstances

## Tables

- Left column should be the index (required with more than 5 rows)
- Header format (uncertainty optional):
  ```
  <name> (<symbol>)
  (<uncertainty> <unit>)
  ```
- Header text centred
- At least 10pt Times
- Borders
  - 40% grey (`#666, rgb(102, 102, 102)`)
  - 2.25 pt outer, 0.75 pt otherwise
- Uncertainties go in the same cell as the data point
  - If all the uncertainties in a column are equal, it should be placed with the units in the header
- Table cell contents aligned at ± symbol
- Use units as measured for raw data, [MKS](https://en.wikipedia.org/wiki/MKS_system_of_units) system otherwise
  - Explain decision
- Uncertainties must not be percentages; use exact values
