class SecondInformationBoxes extends React.Component {
  render(){
    return(
      <div className="row information-boxes">
  			<div className="col-lg-4 ">
          <div className= "info-text">
            <i className="glyphicon glyphicon-phone"></i>
            <h4 className="font-style-header"> Services</h4>
      			<p className="font-style-info">Our capabilities include laboratories testing, material identification, technical assistance on material selection for packaging and recyclability. </p>
  			  </div>
        </div>
  			<div className="col-lg-4">
          <div className= "info-text">
            <i className="	glyphicon glyphicon-dashboard"></i>
            <h4 className="font-style-header"> Consultation</h4>
  					<p className="font-style-info">We will match up the supply of material with the correct customer to achieve a best net back to the supplier. We make sure that our suppliers produce quality material for customers around the world.  </p>
          </div>
  			</div>
  			<div className="col-lg-4">
          <div className= "info-text">
            <i className="glyphicon glyphicon-search"></i>
            <h4 className="font-style-header">Inventory</h4>
  						<p className="font-style-info">Our knowledge of plastics and paper allows us to handle mixed loads that other companies can't. We will research and test your products to get you the best possibilities of selling or purchasing.</p>
  			</div>
      </div>
    </div>
    );
  }
}
