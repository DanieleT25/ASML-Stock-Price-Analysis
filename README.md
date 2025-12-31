> [!warning]
> **Status**: Work in Progress (Active Development)

# ASML Stock Price Analysis

_Project for "Time series analysis for economic and financial data" course of Data Science_

_[Daniele Tambone](https://www.linkedin.com/in/daniele-tambone-b5733616a/) @ Dept of Math and Computer Science, University of Catania_

## Overview
This project focuses on the time series analysis of **ASML Holding N.V. (ASML)** stock prices. Utilizing a reproducible data science workflow, this analysis aims to explore historical trends, visualize market volatility, and evaluate key financial metrics.

The main topics are:
1. EDA (Exploratory Data Analysis)
2. Return analysis
3. Volatility analysis

The project is built using **Quarto** for documentation and **R** for data processing, ensuring that all analysis is transparent and reproducible.

## Build and Setup

### Prerequisites

Please ensure you have the following installed:
* **R** (latest version recommended)
* **VS Code** (recommended) or **RStudio**
* **Quarto CLI** ([Download here](https://quarto.org/docs/get-started/))

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/DanieleT25/ASML-Stock-Price-Analysis
    cd ASML-Stock-Price-Analysis
    ```

2.  **Restore the Environment**
    This project uses `renv` to manage dependencies and ensure reproducibility.

    1. Open the project folder in VS Code or RStudio.
    2. Open the **R Terminal** or **R Console**.
    3. Run the following commands to install `renv` (if not already installed) and restore the library:
        ```r
        if (!require("renv")) install.packages("renv")
        renv::restore()
        ```

3.  **Render the Project**
    To build the output (PDF/Book), run the Quarto render command in your terminal:
    ```bash
    quarto render
    ```

    The output will be generated in the `_output/` directory.

## Project Outputs

| Type | Description | Link |
| :--- | :--- | :--- |
| **HTML Report** | Full interactive Quarto Book (Website) | [**View Analysis**](https://danielet25.github.io/ASML-Stock-Price-Analysis/) |
| **Presentation** | Summary slides (RevealJS) | [**View Slides**](https://danielet25.github.io/ASML-Stock-Price-Analysis/presentation.html) |
| **PDF Report** | Static printable version | [**Download PDF**](https://danielet25.github.io/ASML-Stock-Price-Analysis/ASML-Stock-Price-Analysis.pdf) |