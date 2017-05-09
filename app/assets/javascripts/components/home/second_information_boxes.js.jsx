class SecondInformationBoxes extends React.Component {
  render(){
    return(
      <div className="row information-boxes">
  			<div className="col-lg-4 ">
          <div className= "info-text">
          <i className="glyphicon glyphicon-globe"></i>
          <h4 className="font-style-header"> Services</h4>
  				<div className="">
  					<div className="  ">
      			<p className="font-style-info">Our capabilities include laboratories testing, material identification, technical assistance on material selection for packaging and recyclability. </p>
  					</div>
  				</div>
  			</div>
      </div>
  			<div className="col-lg-4">
          <div className= "info-text">
          <i className="glyphicon glyphicon-bookmark"></i>
          <h4 className="font-style-header"> Consultation</h4>
  				<div className="">
  					<div className=" consulation ">
  						<p className="font-style-info">We will match up the supply of material with the correct customer to achieve a best net back to the supplier. We make sure that our suppliers produce quality material for customers around the world.  </p>
  					</div>
  				</div>
        </div>
  			</div>
  			<div className="col-lg-4">
            <div className= "info-text">
          <i className="glyphicon glyphicon-shopping-cart"></i>
        <h4 className="font-style-header">Inventory</h4>
  				<div className="">
  					<div className="">
  					</div>
  					<div className=" inventory">
  						<p className="font-style-info">Our knowledge of plastics and paper allows us to handle mixed loads that other companies can't. We will research and test your products to get you the best possibilities of selling or purchasing with confidence and security that our client require.</p>
  					</div>
  				</div>
          </div>
  			</div>
      </div>
    );
  }
}
