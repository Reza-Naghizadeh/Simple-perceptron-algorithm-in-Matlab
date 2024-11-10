## Perceptron Algorithm for Binary Classification

## Overview

This repository contains two MATLAB implementations of the perceptron algorithm, which is a type of artificial neural network used for binary classification. The first code implements the training of a perceptron on a NOR gate problem, while the second code works on classifying a set of 2D points into two classes. Both codes visualize the decision boundary as the algorithm learns through multiple epochs.

These codes were developed as part of my Artificial Neural Networks (ANN) course project at **IASBS (Institute for Advanced Studies in Basic Sciences)**.

## Files

1. **NOR Gate Perceptron (first code)**: 
   - Implements a perceptron to solve the NOR gate problem.
   - Visualizes the decision boundary and updates it after each epoch.
   
2. **2D Point Classification Perceptron (second code)**: 
   - Implements a perceptron to classify a set of 2D points into two classes.
   - Visualizes the decision boundary and updates it after each epoch.

## How to Run

1. Open the MATLAB environment.
2. Download the script files (both codes) into your working directory.
3. Execute the scripts one by one. The training process will run, and the decision boundaries will be plotted dynamically for each epoch.

## Inputs and Outputs

- **First Code (NOR Gate)**:
  - **Inputs**: The 2D input matrix representing the four possible input combinations of the NOR gate.
  - **Targets**: The corresponding output labels (1 or 0) for the NOR gate.
  - **Output**: A plot that shows the data points and their class labels, followed by the decision boundary after each epoch.

- **Second Code (2D Point Classification)**:
  - **Inputs**: A set of 2D points with binary class labels.
  - **Targets**: The binary class labels for the inputs.
  - **Output**: A dynamic plot of the data points and their class labels, along with an updated decision boundary after each epoch.

## Key Features

- Implements a basic perceptron algorithm for binary classification tasks.
- Visualizes the decision boundary and the weight updates during the training process.
- Designed for educational purposes to demonstrate the workings of a simple artificial neural network.

## Acknowledgments

This project was completed as part of my **Artificial Neural Networks** course at **IASBS**. The implementation and visualization are intended to provide insights into the behavior of the perceptron algorithm.
