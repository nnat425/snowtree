class InformationBoxes extends React.Component {
  render(){
    return(
      <div className="row information-boxes">
  			<div className="col-md-4 ">
  				<div className="panel">
  					<div className="panel-heading panel-color">
  						<h4><i className="glyphicon glyphicon-lock"></i> Services</h4>
  					</div>
  					<div className="panel-body panel-color-body service-box ">
  						<p>Our capabilities include laboratories testing, material identification, technical assistance on material selection for packaging and recyclability. </p>
  					</div>
  				</div>
  			</div>
  			<div className="col-md-4">
  				<div className="panel">
  					<div className="panel-heading panel-color1">
  						<h4><i className="fa fa-fw fa-gift"></i> Free &amp; Open Source</h4>
  					</div>
  					<div className="panel-body panel-color-body ">
  						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
  					</div>
  				</div>
  			</div>
  			<div className="col-md-4">
  				<div className="panel">
  					<div className="panel-heading panel-color2">
  						<h4><i className="fa fa-fw fa-compass"></i> Easy to Use</h4>
  					</div>
  					<div className="panel-body panel-color-body ">
  						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
  					</div>
  				</div>
  			</div>
      </div>
    );
  }
}
