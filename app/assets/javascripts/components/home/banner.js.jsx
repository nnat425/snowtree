class BannerPictures extends React.Component {
  render() {
    return(
      <div id="carousel-example" className="carousel slide banner-move" data-ride="carousel">
      	<ol className="carousel-indicators">
      		<li  data-target="#carousel-example" data-slide-to="0" className="active"></li>
      		<li data-target="#carousel-example" data-slide-to="1"></li>
      		<li data-target="#carousel-example" data-slide-to="2"></li>
      	</ol>
      	<div className="carousel-inner">
      		<div className="item active image1">
      			<img src="/plastic.jpg" width="2000"/>
      			<div className="carousel-caption caption"></div>
      		</div>
      		<div className="item image1">
      			<img src="/plasticbottles.jpg"  width="2000"/>
      			<div className="carousel-caption"></div>
      		</div>
      		<div className="item image1">
      			<img src="/plastic.jpg" width="2000"/>
      			<div className="carousel-caption"></div>
      		</div>
      	</div>
      		<a className="left carousel-control" href="#carousel-example" data-slide="prev">
      			<span className="glyphicon glyphicon-chevron-left"></span>
      		</a>
      		<a className="right carousel-control" href="#carousel-example" data-slide="next">
      			<span className="glyphicon glyphicon-chevron-right"></span>
      		</a>
        </div>
    )
  }
}
