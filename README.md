# Security Federation Models Validation

## Overview

This Git repository encompasses OpenFlexo projects essential for federating models and implementing security rules to validate our methodology. It contains the required models and metamodels resources to facilitate the seamless execution of the security rule implementation process.

## Table of Contents

- [Models](#models)
- [Metamodels](#metamodels)
- [UseCases](#use-cases)
- [Prerequisites](#Prerequisites)
- [Usage](#Usage)

## Models

The `Resources/Models` folder contains various models used in the project, including Deployment models (`DeploymentModel`), BPMN models (`BpmnModel`), SOAML models (`SoamlModel`), WSDL models (`WSDLModel`), AccessControl models (`AccessControlModel`), and DATA Models(`DataModel`). These models are essential components for defining and visualizing the structure and behavior of the system.

- **Deployment Model**: Describes the deployment architecture of the system.
- **BPMN Model**: Represents business processes using the BPMN standard.
- **SOAML Model**: Captures aspects related to service-oriented architecture modeling.
- **WSDL Model**: Describes interfaces to a web sevices.
- **Data Model**: Structures the data elements of the system.
- **AccessControl Model**: Defines the permission of user on the system.

## Metamodels

The `Resources/Metamodels` folder includes metamodels that define the structure and constraints for the models used in the project. Metamodels are crucial for ensuring consistency and adherence to specific modeling standards.

- **SOAML Metamodel**: Defines the metamodel for SOAML models.
- **WSDL Metamodel**: Describes the metamodel for Web Services Description Language (WSDL) models.
- **Deployment Metamodel**: Describes the metamodel for Deployment models.
- **AccessControl Metamodel**: Describes the metamodel for AccessControl models.

## Use Cases

The `UseCases` folder encompasses the implementation of security rules using the OpenFlexo framework. Each use case is represented as an OpenFlexo project within its own folder. Below is a brief description of each use case:

### iTrust
iTrust is an open-source medical system introduced in 2005 at the University of North Carolina. iTrust has requirements related to privacy, confidentiality,
and integrity. 
- **Virtual Model**: *ITrustSecurityFederation*
  - Description: This virtual model implements specific security rule federation logic for iTrust. This virtual Model federate : the BPMN model (AddNewPrescription1), the Deployement model (iTrustDeploymentModel)  
  - **Concepts**:
    - *PoolArtifactCorrespondence* : This Concept represent the correspondence between the Pool element in the BPMN model and the Artifact element in the deployement model. 
    - *MessageFlowCommunicationPathCorrespondence* : This Concept represent the correspondence between the MessageFlow element in the BPMN model and the CommunicationPath element in the deployement model
  - **Behaviours**:
    - *iTrustSecurityRule1* : This rule is attached to the correspondence PoolArtifactCorrespondence. Defines the security constraints that the correspondences must to verify. 
    - *iTrustSecurityRule2* : This rule is attached to the correspondence PoolArtifactCorrespondence. Defines the security constraints that the correspondences must to verify.

- **Virtual Models and Flexo Concept Instances**: *instanceITrustSystem*
  - Description: Components used for executing and testing the security rule implementation as behaviors in the context of iTrust.

### HolidayBooking
Holiday booking is a reservation system for travel agencies to book flights and
hotels for its clients. 
- **Virtual Model**: *HolidayBookingSecurityFederation*
  - Description: This virtual model implements specific security rule federation logic for HolidayBooking.  This virtual Model federate : the BPMN model (BookingHoliday), the SOAML model (MetaSOAML), the WSDL model (WSDLModel),
  - **Concepts**:
    - *PoolArtifactCorrespondence* : This Concept represent the correspondence between the Pool element in the BPMN model and the Artifact element in the deployement model.
    - *ContractPoolsCorrespondence* : This Concept represent the correspondence between two pools in the BPMN model and the Contract service element in the SOAML model.
  - **Behaviours**:
    - *BookingSecurityRule1* : This rule is attached to the correspondence PoolArtifactCorrespondence. Defines the security constraints that the correspondences must to verify.
    - *BookingSecurityRule2* : This rule is attached to the correspondence ContractPoolsCorrespondence. Defines the security constraints that the correspondences must to verify.

- **Virtual Models and Flexo Concept Instances**: *Instance1*
  - Description: Components utilized for executing and validating the security rule implementation within the context of HolidayBooking.

### MessagingService
PICO (Presence and Instant Communication) a very simplified representation of ICQ or America Online Instant Messenger. 
- **Virtual Model**: *MessagingSecurityFederation*
  - Description: This virtual model implements specific security rule federation logic for Messaging service. This virtual Model federate : the BPMN model (MessagingServiceModel), the Deployement model (DeploymentMessangingService), and the Data model(DataMessangingService).  
  - **Concepts**:
    - *AssociationCommunicationPathCorrespondence* : This Concept represent the correspondence between the Association element in the Data model and the CommunicationPath element in the deployement model
  - **Behaviours**:
    - *messagingSecurityRule1* : This rule is attached to the correspondence AssociationCommunicationPathCorrespondence. Defines the security constraints that the correspondences must to verify. 

- **Virtual Models and Flexo Concept Instances**: *instancesMessagingService1*
  - Description: Components used for executing and testing the security rule implementation as behaviors in the context of iTrust.

## Prerequisites

Before starting to use the project, ensure that you have the following prerequisites:

1. **OpenFlexo Installation**: Make sure you have OpenFlexo installed on your system. You can download and install OpenFlexo from [OpenFlexo official website](https://www.openflexo.org/downloads).

2. **Git**: The project utilizes Git for version control. If Git is not already installed on your machine, you can download it from [Git Downloads](https://git-scm.com/downloads).

## Usage

To get started with the project, follow these steps:

1. Clone the repository:

   ```
    git clone https://github.com/ChahrazedBoudj/SecurityFederationModelsValidation
   ```

2. Import the `Resources` folder in openflexo as a Resource Center.

3. Navigate to the UseCases folder. You can then open each use case project individually in OpenFlexo to examine the model federation, check the matching rules, and run the security rules.

4. You can then navigate to the instances and simply right-click on them to run the security rule as a Flexo behavior. You can view the output log in the console, which can be opened from: Tools -> FML Console.