# Security Federation Models Validation

## Overview

This repository contains the source code and documentation for maintaining security consistency inter-model. Focusing on Model-Driven Engineering (MDE), the project addresses the challenges associated with managing model evolution, especially concerning security. By leveraging the model federation paradigm, it enables the reification of dependencies between heterogeneous models and equips them with security rules to maintain security consistency across heterogeneous models. Through this project, we aim to provide a robust solution for managing model evolution, particularly addressing its impact on security consistency across inter-models. To validate our proposal, we utilize the Openflexo and Epsilon frameworks to establish correspondences between meta-models and reify these correspondences into concrete links between heterogeneous models. This enables the implementation and enforcement of security rules across the integrated models. This Git repository contains the required models, metamodels, and evaluation resources to facilitate the seamless execution of the security rule.

## Table of Contents

- [Openflexo](#openflexo)
- [Epsilon](#epsilon)
- [Evaluation](#evaluation)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Openflexo

The `Openflexo` folder contains the implementation of security rules using the Openflexo and all the necessary resources.

### Models

The `Openflexo/Resources/Models` folder contains various models used in the project, including Deployment models (`DeploymentModel`), BPMN models (`BpmnModel`), SOAML models (`SoamlModel`), WSDL models (`WSDLModel`), AccessControl models (`AccessControlModel`), and Data Models (`DataModel`). These models are essential components for defining and visualizing the structure and behavior of the system.

- **Deployment Model**: Describes the deployment architecture of the system.
- **BPMN Model**: Represents business processes using the BPMN standard.
- **SOAML Model**: Captures aspects related to service-oriented architecture modeling.
- **WSDL Model**: Describes interfaces to web services.
- **Data Model**: Structures the data elements of the system.
- **AccessControl Model**: Defines user permissions within the system.

### Metamodels

The `Openflexo/Resources/Metamodels` folder includes metamodels that define the structure and constraints for the models used in the project. Metamodels are crucial for ensuring consistency and adherence to specific modeling standards.

- **SOAML Metamodel**: Defines the metamodel for SOAML models.
- **WSDL Metamodel**: Describes the metamodel for Web Services Description Language (WSDL) models.
- **Deployment Metamodel**: Describes the metamodel for Deployment models.
- **AccessControl Metamodel**: Describes the metamodel for AccessControl models.

### Use Cases

The `Openflexo/UseCases` folder encompasses the implementation of security rules using the Openflexo framework. Each use case is represented as an Openflexo project within its own folder.

#### iTrust
- **Virtual Model**: *ITrustSecurityFederation*
  - Description: Implements security rule federation logic for iTrust, federating BPMN and Deployment models.
  - **Concepts**:
    - *PoolArtifactCorrespondence* (Pool-BPMN ↔ Artifact-Deployment)
    - *MessageFlowCommunicationPathCorrespondence* (MessageFlow-BPMN ↔ CommunicationPath-Deployment)
  - **Behaviors**:
    - *iTrustSecurityRule1*: Security rule for PoolArtifactCorrespondence.
    - *iTrustSecurityRule2*: Security rule for PoolArtifactCorrespondence.

#### HolidayBooking
- **Virtual Model**: *HolidayBookingSecurityFederation*
  - Description: Implements security rule federation logic for HolidayBooking, federating BPMN, SOAML, and WSDL models.
  - **Concepts**:
    - *PoolArtifactCorrespondence* (Pool-BPMN ↔ Artifact-Deployment)
    - *ContractPoolsCorrespondence* (Two Pools-BPMN ↔ Contract-SOAML)
  - **Behaviors**:
    - *BookingSecurityRule1*: Security rule for PoolArtifactCorrespondence.
    - *BookingSecurityRule2*: Security rule for ContractPoolsCorrespondence.

#### MessagingService
- **Virtual Model**: *MessagingSecurityFederation*
  - Description: Implements security rule federation logic for Messaging Service, federating BPMN, Deployment, and Data models.
  - **Concepts**:
    - *AssociationCommunicationPathCorrespondence* (Association-Data ↔ CommunicationPath-Deployment)
  - **Behaviors**:
    - *messagingSecurityRule1*: Security rule for AssociationCommunicationPathCorrespondence.

#### FlightPlanNegotiation
- **Virtual Model**: *FlightPlanSecurityFederation*
  - Description: Implements security rule federation logic for Flight Plan Negotiation, federating BPMN, Deployment, and Data models.
  - **Concepts**:
    - *MessageFlowCommunicationPathCorrespondences* (MessageFlow-BPMN ↔ CommunicationPath-Deployment)
  - **Behaviors**:
    - *flightPlanSecurityRule1*: Security rule for MessageFlowCommunicationPathCorrespondences.

## Epsilon

The `Epsilon` folder contains an alternative implementation of some security rules using the Epsilon framework. This implementation focuses on the HolidayBooking and iTrust use cases.

### Use Cases

The `Epsilon/UseCases` folder encompasses the implementation of security rules using the Openflexo framework. Each use case is represented as an Openflexo project within its own folder.

## Evaluation

The `Evaluation` folder contains a detailed PDF documents evaluating the methodology's effectiveness.

`MethodologyEvaluationProtocol.pdf`: A document detailing the methodology used to assess security federation validation.

`MethodologyUsabilityEvaluationResult.pdf`: An analysis of the outcomes, showcasing the effectiveness of our security enforcement approach.

## Prerequisites

Before starting to use the project, ensure that you have the following prerequisites:

1. **Openflexo Installation**: Make sure you have Openflexo installed on your system. You can download and install Openflexo from [Openflexo official website](https://www.openflexo.org/downloads).
2. **Epsilon Framework**: Install Epsilon to execute the alternative security rule implementation. See the [Epsilon website](https://www.eclipse.org/epsilon/) for setup instructions.
3. **Git**: The project utilizes Git for version control. If Git is not already installed on your machine, you can download it from [Git Downloads](https://git-scm.com/downloads).

## Usage

To get started with the project, follow these steps:

1. Clone the repository:
   ```
   git clone https://github.com/ChahrazedBoudj/SecurityFederationModelsValidation
   ```
2. **For Openflexo:**
   - Import the `Openflexo` folder in Openflexo as a Resource Center.
   - Navigate to the `UseCases` folder, open each project individually, and execute security rules as Flexo behaviors.
   - View the output log in the console via: Tools -> FML Console.

3. **For Epsilon:**
   - Navigate to the `Epsilon` folder.
   - Navigate to the `UseCases` folder, open each project individually, and load the appropriate scripts in an Epsilon-supported environment.
   - Execute security rule validation using Epsilon transformations.

4. **Evaluation:**
   - Review the `Evaluation` folder for insights on methodology assessment and validation results.