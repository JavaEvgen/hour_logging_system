<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Henkilön lisääminen</title>
<jsp:include page="../../kayttaja/navigointi.jsp"></jsp:include>

<script src="<c:url value="/resources/js/custom.js"/>"></script>

	<!-- flot js -->
	<!--[if lte IE 8]><script type="text/javascript" src="js/excanvas.min.js"/>"></script><![endif]-->
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.pie.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.orderBars.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.time.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/date.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.spline.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.stack.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/curvedLines.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/flot/jquery.flot.resize.js"/>"></script>
</head>

<body>
	
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">
				<div class="page-title">
					<div class="title_left"></div>
				</div>
				<div class="clearfix"></div>

				<div class="row">

					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">

								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="table-responsive">
									<table id="example"
										class="table table-striped responsive-utilities jambo_table">

										<tbody>

											<tr class="even pointer">
												<form:form modelAttribute="projekti" method="post">
													<fieldset>
														<legend>Projektin tiedot</legend>
														<p>
															<form:label path="projnimi">Projektin nimi</form:label>
															<br />
															<form:input path="projnimi" /> <form:errors path="projnimi" cssClass="Virheteksti"/>
														</p>
														<p>
															<button type="submit">Lisää</button>
														</p>
													</fieldset>
												</form:form>

												</sec:authorize>
										</tbody>

									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				</tbody>








			</div>

		</div>
</body>
</html>
</body>
</html>