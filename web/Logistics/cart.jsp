<%-- 
    Document   : cart
    Created on : 10-19-2021, 01:52:37 PM
    Author     : 16ado
--%>

<%@page import="Model.ClsProducto"%>
<%@page import="Model.ClsCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CarritoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp" %>
<%@include file="../layout/navbar.jsp" %>
<%!
    CarritoDAO dao = new CarritoDAO();
    ArrayList<ClsCart> cart = new ArrayList<>();
%>
<%    int code = (Integer) la_session.getAttribute("codigo");

%>
<div class="container">
    <main>

        <!-- Main Container -->
        <div class="container">

            <!-- Section cart -->
            <section class="section my-5 pb-5">

                <div class="card card-ecommerce">
                    <div class="card-body">

                        <!-- Shopping Cart table -->
                        <div class="table-responsive">

                            <table class="table product-table">

                                <!-- Table head -->
                                <thead class="mdb-color lighten-5">
                                    <tr>
                                        <th></th>
                                        <th class="font-weight-bold">
                                            <strong>Producto</strong>
                                        </th>
                                        <th class="font-weight-bold">
                                            <strong>Descripcion</strong>
                                        </th>
                                        <th></th>
                                        <th class="font-weight-bold">
                                            <strong>Precio</strong>
                                        </th>
                                        <th class="font-weight-bold">
                                            <strong>Descuento</strong>
                                        </th>
                                        <th class="font-weight-bold">
                                            <strong>Amount</strong>
                                        </th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <!-- /.Table head -->

                                <!-- Table body -->
                                <tbody>

                                    <%                                        cart = dao.showCart(code);
                                        for (ClsCart elem : cart) {
                                    %>
                                    <!-- First row -->
                                    <tr>
                                        <td style="display:none;"><%=elem.getCodigoCarrito()%></td>

                                        <th scope="row">
                                            <a title="Ver producto" href="http://localhost:8080/project/products/viewproduct.jsp?product=<%=elem.getCodigoProducto()%>"><img src="<%=elem.getFoto()%>" alt="" class="img-fluid z-depth-0"></a> 
                                        </th>
                                        <td>
                                            <h5 class="mt-3">
                                                <strong><%=elem.getNombreProd()%></strong>
                                            </h5>
                                            <p class="text-muted"><%=elem.getCategoria()%></p>
                                        </td>
                                        <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod </td>
                                        <td></td>
                                        <td class="font-weight-bold"><%=elem.getPrecio()%></td>
                                        <td class="font-weight-bold">
                                            <%=elem.getDescuento()%>
                                        </td>

                                        <td>
                                            <a name="btnElimiarCart" 
                                               class="btn btn-sm btn-danger" 
                                               title="Remove item" 
                                               href="${pageContext.request.contextPath}/CartSevlet?btnElimiarCart=<%=elem.getCodigoCarrito() %>">
                                                    X
                                             </a> 
                                            
                                            
                                        </td>
                                    </tr>
                                    <!-- /.First row -->
                                    <%
                                        }

                                    %>

                                    <tr>
                                        <td colspan="3"></td>
                                        <td>
                                            <h4 class="mt-2">
                                                <strong>Total</strong>
                                            </h4>
                                        </td>
                                        <td class="text-right">
                                            <h4 class="mt-2">
                                                <strong> ???</strong>
                                            </h4>
                                        </td>
                                        <td colspan="2" class="text-right">
                                            <button type="button" class="btn btn-primary btn-rounded">Completar compra
                                                <i class="fa fa-angle-right right"></i>
                                            </button>
                                        </td>
                                    </tr>




                                </tbody>
                                <!-- /.Table body -->

                            </table>

                        </div>
                        <!-- /.Shopping Cart table -->

                    </div>

                </div>

            </section>
            <!-- /Section cart -->

            <!-- Section products -->
            <section>
                <h4 class="font-weight-bold mt-4 title-1">
                    <strong>YOU MAY BE INTERESTED IN</strong>
                </h4>
                <hr class="blue mb-5">

                <!-- Grid row -->
                <div class="row mb-3">

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card card-ecommerce">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg" class="img-fluid" alt="">
                                <a>
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!--Card image-->

                            <!--Card content-->
                            <div class="card-body">
                                <!--Category & Title-->

                                <h5 class="card-title mb-1">
                                    <strong>
                                        <a href="" class="dark-grey-text">Sony D74v</a>
                                    </strong>
                                </h5>
                                <span class="badge badge-info mb-2">new</span>
                                <!-- Rating -->
                                <ul class="rating">
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                </ul>

                                <!--Card footer-->
                                <div class="card-footer pb-0">
                                    <div class="row mb-0">
                                        <span class="float-left">
                                            <strong>1439$</strong>
                                        </span>
                                        <span class="float-right">
                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                <i class="fa fa-shopping-cart ml-3"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <!--Card content-->

                        </div>
                        <!--Card-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card card-ecommerce">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/8.jpg" class="img-fluid" alt="">
                                <a>
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!--Card image-->

                            <!--Card content-->
                            <div class="card-body">
                                <!--Category & Title-->

                                <h5 class="card-title mb-1">
                                    <strong>
                                        <a href="" class="dark-grey-text">Samsung V54</a>
                                    </strong>
                                </h5>
                                <span class="badge badge-info mb-2">new</span>
                                <!-- Rating -->
                                <ul class="rating">
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                </ul>

                                <!--Card footer-->
                                <div class="card-footer pb-0">
                                    <div class="row mb-0">
                                        <span class="float-left">
                                            <strong>1439$</strong>
                                        </span>
                                        <span class="float-right">
                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                <i class="fa fa-shopping-cart ml-3"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <!--Card content-->

                        </div>
                        <!--Card-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4">
                        <!--Card-->
                        <div class="card card-ecommerce">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/7.jpg" class="img-fluid" alt="">
                                <a>
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!--Card image-->

                            <!--Card content-->
                            <div class="card-body">
                                <!--Category & Title-->

                                <h5 class="card-title mb-1">
                                    <strong>
                                        <a href="" class="dark-grey-text">Dell 786i</a>
                                    </strong>
                                </h5>
                                <span class="badge badge-info mb-2">new</span>
                                <!-- Rating -->
                                <ul class="rating">
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star grey-text"></i>
                                    </li>
                                </ul>

                                <!--Card footer-->
                                <div class="card-footer pb-0">
                                    <div class="row mb-0">
                                        <span class="float-left">
                                            <strong>1439$</strong>
                                        </span>
                                        <span class="float-right">
                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                <i class="fa fa-shopping-cart ml-3"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <!--Card content-->

                        </div>
                        <!--Card-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4">

                        <!--Card-->
                        <div class="card card-ecommerce">

                            <!--Card image-->
                            <div class="view overlay">
                                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/9.jpg" class="img-fluid" alt="">
                                <a>
                                    <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
                            <!--Card image-->

                            <!--Card content-->
                            <div class="card-body">
                                <!--Category & Title-->

                                <h5 class="card-title mb-1">
                                    <strong>
                                        <a href="" class="dark-grey-text">Canon 675-D</a>
                                    </strong>
                                </h5>
                                <span class="badge badge-info mb-2">new</span>
                                <span class="badge badge-success mb-2 ml-2">SALE</span>
                                <!-- Rating -->
                                <ul class="rating">
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                    <li>
                                        <i class="fa fa-star blue-text"></i>
                                    </li>
                                </ul>

                                <!--Card footer-->
                                <div class="card-footer pb-0">
                                    <div class="row mb-0">
                                        <h5 class="mb-0 pb-0 mt-1 font-weight-bold">
                                            <span class="red-text">
                                                <strong>$1199</strong>
                                            </span>
                                            <span class="grey-text">
                                                <small>
                                                    <s>$1520</s>
                                                </small>
                                            </span>
                                        </h5>

                                        <span class="float-right">

                                            <a class="" data-toggle="tooltip" data-placement="top" title="Add to Cart">
                                                <i class="fa fa-shopping-cart ml-3"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>

                            </div>
                            <!--Card content-->

                        </div>
                        <!--Card-->

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->



            </section>
            <!-- Section products -->

        </div>
        <!-- /.Main Container -->

    </main>
</div>
<%@include file="../layout/footer.jsp" %>