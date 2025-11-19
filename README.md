# Homininis_dataset
 Paleoanthropological data with morphological traits (cranial capacity, height), temporal periods, geographical locations, and behavioral adaptations across hominin species. Enables evolutionary pattern analysis and statistical comparisons of human ancestor characteristics using non-parametric methods.

# 🦍 Hominin Evolution Morphological Analysis

## 📊 Project Overview
Comprehensive statistical analysis of hominin fossil data examining evolutionary trends in cranial capacity, height, and temporal distribution across different species, habitats, and geographic locations. This research applies robust non-parametric methods to understand human evolutionary patterns and morphological adaptations.

## 🎯 Research Objectives
- **Species Characterization**: Detailed morphological profiling of hominin species
- **Temporal Analysis**: Examination of evolutionary changes over time
- **Habitat Influence**: Assessment of environmental impact on physical characteristics
- **Geographic Variation**: Analysis of morphological differences across discovery locations
- **Morphological Correlations**: Investigation of relationships between brain size, height, and evolutionary timing

## 🔬 Analytical Methodology

### Statistical Framework
- **Descriptive Statistics**: Comprehensive species-level morphological summaries
- **Distribution Analysis**: Normality assessment through histogram visualization
- **Non-Parametric Group Comparisons**: Wilcoxon and Kruskal-Wallis tests for multi-group analysis
- **Post-hoc Testing**: Dunn's test with Bonferroni correction for significant findings
- **Correlation Analysis**: Spearman's rank correlation for monotonic relationships

### Data Quality Assurance
- Missing value detection and handling
- Data structure validation and variable type verification
- Species classification consistency checking
- Outlier identification through distribution analysis

## 📈 Core Analyses Performed

### 1. Species-Level Morphological Profiling
- Sample size determination per hominin species
- Cranial capacity statistics (mean, median, variability)
- Height measurements with central tendency and dispersion
- Temporal range analysis across evolutionary periods
- Comprehensive descriptive statistics for comparative anatomy

### 2. Distribution Normality Assessment
- Histogram visualization with normal distribution overlays
- Cranial capacity distribution patterns across specimens
- Height variability and distribution characteristics
- Temporal distribution across evolutionary timeline
- Probability density estimation for morphological traits

### 3. Habitat Influence Analysis
- Wilcoxon rank-sum test comparing temporal distribution between habitat types
- Kruskal-Wallis test for cranial capacity variation across habitats
- Habitat-specific morphological pattern identification
- Environmental adaptation evidence examination

### 4. Geographic and Zonal Comparisons
- Temporal variation analysis across discovery locations
- Zonal differences in morphological characteristics
- Geographic patterning in evolutionary development
- Regional adaptation assessment

### 5. Morphological Correlation Analysis
- Spearman correlation between cranial capacity and height
- Temporal relationships with physical characteristics
- Brain-body size allometry examination
- Evolutionary trend correlation assessment

### 6. Post-hoc Multiple Comparisons
- Dunn's test with Bonferroni correction for significant Kruskal-Wallis results
- Pairwise group comparison identification
- Statistical significance validation
- Effect direction determination

## 🗂️ Dataset Characteristics

### Taxonomic Coverage
- Multiple hominin species representation
- Genus and species classification verification
- Sample size variation across taxonomic groups
- Temporal span coverage

### Morphological Variables
- **Cranial Capacity**: Brain size measurements in cubic centimeters
- **Height**: Stature measurements in centimeters
- **Time**: Evolutionary period or chronological dating

### Ecological & Geographic Variables
- **Habitat Types**: Environmental classification (0, 8, etc.)
- **Location**: Geographic discovery sites
- **Zone**: Regional or stratigraphic zoning

## 📊 Key Statistical Findings

### Morphological Patterns
- Species-specific cranial capacity ranges and central tendencies
- Height distribution across hominin lineage
- Temporal progression of physical characteristics
- Variability measures within and between species

### Environmental Relationships
- Habitat type impact on morphological development
- Geographic variation significance levels
- Zonal differentiation patterns
- Adaptation evidence through statistical testing

### Evolutionary Correlations
- Cranial capacity-height relationship strength and direction
- Temporal trends in encephalization
- Morphological integration patterns
- Evolutionary rate correlations

## 🛠️ Technical Implementation

### R Packages Utilized
```r
# Core Analysis
library(tidyverse)    # Data manipulation and visualization
library(dplyr)        # Data transformation
library(psych)        # Descriptive statistics

# Specialized Statistical Testing
library(dlookr)       # Distribution analysis and normality
library(dunn.test)    # Post-hoc multiple comparisons

# Data Handling
library(rio)          # Data import/export
Based on this hominin fossil analysis, here are the key scientific takeaways:

🔬 Major Evolutionary Findings
1. Brain Size Evolution Pattern
Strong positive correlation between cranial capacity and height (Spearman's correlation)

Supports the hypothesis that brain size and body size evolved together

Larger-bodied hominins tended to have larger brains

2. Temporal Distribution
Significant differences in time periods across different locations/zones

Hominins appeared in different geographic regions at different times

Suggests migration patterns or regional evolutionary timelines

3. Habitat Specialization
Significant differences in cranial capacity across habitats

Different hominin species adapted to specific environmental conditions

Habitat type influenced physical characteristics

4. Species Diversity
Multiple distinct hominin species identified in the dataset

Each species shows unique combinations of physical traits

Evidence of adaptive radiation in hominin evolution

📊 Statistical Evidence
Significant Results:
Kruskal-Wallis tests: Significant differences in time across locations and zones

Post-hoc Dunn tests: Revealed which specific locations/zones differ

Spearman correlations: Strong relationship between brain and body size

Wilcoxon test: Temporal differences between habitat types 0 vs 8

Distribution Patterns:
Variables show non-normal distributions (justifying non-parametric tests)

Multiple peaks in distributions suggest multiple species clusters

Wide variability within species indicates intraspecies diversity

🧠 Evolutionary Implications
Key Evolutionary Trends:
Encephalization: Progressive brain size increase over time

Body Size Coordination: Brain and body size evolved in tandem

Geographic Dispersion: Hominins occupied diverse habitats

Temporal Stratification: Different species coexisted in different periods

Research Significance:
Provides quantitative evidence for hominin evolutionary patterns

Supports theories of brain-body coevolution

Reveals habitat-specific adaptations

Demonstrates temporal and geographic diversity in hominin lineage

🔍 Methodological Strengths
Robust statistical approach using non-parametric methods appropriate for fossil data

Comprehensive analysis covering multiple variables and species

Post-hoc testing to identify specific group differences

Correlation analysis revealing evolutionary relationships

This analysis provides strong empirical support for major theories in human evolution, particularly the coordinated evolution of brain and body size, and the adaptive radiation of hominins across different environments and time periods.
