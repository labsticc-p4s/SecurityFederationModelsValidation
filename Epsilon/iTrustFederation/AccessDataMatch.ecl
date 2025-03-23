/*
* Match the two models data model and access control model
*/

rule Models 
	match l : DataITrust!Model with r : iTrustAccessControlModel!AccessControlModel {
	compare : true
}

/*
* Match the class element in the data model and the role element in the access control model
*/

rule Class
    match l : DataITrust!Class
    with r : iTrustAccessControlModel!Role {

    compare : l.name = r.nameRole 
}

/*
* Match the class element in the data model with the corresponding role in the access control model
*/

rule NestedClass
    match l : DataITrust!Class
    with r : iTrustAccessControlModel!Role {

    compare : l.member.forAll(lp|lp.name.matches(r.nameRole))
}

/*
* Match the operation element in the data model with the corresponding authorization in the access control model
*/

rule Operations
    match l : DataITrust!Operation
    with r : iTrustAccessControlModel!Authorization {

    compare : l.name = r.nameAuthorization 
}