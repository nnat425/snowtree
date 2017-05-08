class SecondInformationBoxes extends React.Component {
  render(){
    return(
      <div className="row information-boxes">
  			<div className="col-md-4 ">
  				<div className="panel">
  					<div className="panel-heading panel-color">
  						<h4><i className="glyphicon glyphicon-globe"></i> Services</h4>
  					</div>
  					<div className="panel-body panel-color-body service-box ">
  						<p>Our capabilities include laboratories testing, material identification, technical assistance on material selection for packaging and recyclability. </p>
  					</div>
  				</div>
  			</div>
  			<div className="col-md-4">
  				<div className="panel">
  					<div className="panel-heading panel-color ">
  						<h4><i className="glyphicon glyphicon-bookmark"></i> Consultation</h4>
  					</div>
  					<div className="panel-body panel-color-body consulation ">
  						<p>We will match up the supply of material with the correct customer to achieve a best net back to the supplier. We make sure that our suppliers produce quality material for customers around the world.  The ability technically assures both the customer and the supplier of smooth transaction with rarely issues of quality.  </p>
  					</div>
  				</div>
  			</div>
  			<div className="col-md-4">
  				<div className="panel">
  					<div className="panel-heading panel-color2">
  						<h4><i className="glyphicon glyphicon-shopping-cart"></i> Inventory</h4>
  					</div>
  					<div className="panel-body panel-color-body inventory">
  						<p>Our knowledge of plastics and paper allows us to handle mixed loads that other companies can't. We will research and test your products to get you the best possibilities of selling or purchasing with confidence and security that our client require.</p>
  					</div>
  				</div>
  			</div>
      </div>
    );
  }
}
