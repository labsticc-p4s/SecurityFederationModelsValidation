rule Package 
	match l : DataMessangingService!Package with r : DeploymentMessangingService!Package {
	compare : true
}

rule Models 
	match l : DataMessangingService!Model with r : DeploymentMessangingService!Model {
	compare : true
}

rule Class
    match l : DataMessangingService!Class
    with r : DeploymentMessangingService!Component {

    compare : l.name = r.name
}

/*rule NestedClass
    match l : DataITrust!Class
    with r : iTrustAccessControlModel!Role {

    compare : l.member.forAll(lp|lp.name.matches(r.nameRole))
}*/

rule Links
    match l : DataMessangingService!Association
    with r : DeploymentMessangingService!CommunicationPath {

    compare : l.name = r.name
}