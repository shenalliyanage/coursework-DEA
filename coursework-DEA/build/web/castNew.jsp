<%-- 
    Document   : cast
    Created on : 20-Sep-2020, 14:48:15
    Author     : Rishxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title>
        <link rel="stylesheet" href="stylesheet.css">
        <link href='//fonts.googleapis.com/css?family=Roboto:700,400&subset=latin' rel='stylesheet' type='text/css'>
        <script>
            /* Remove item from cart */
            function removeItem(removeButton) {
                /* Remove row from DOM and recalc cart total */
                var productRow = $(removeButton).parent().parent();
                productRow.slideUp(fadeTime, function () {
                    productRow.remove();
                    recalculateCart();
                    updateSumItems();
                });
            }

        </script>
        <style> 
            /*
     To change this license header, choose License Headers in Project Properties.
     To change this template file, choose Tools | Templates
     and open the template in the editor.
            */
            /* 
                Created on : 15 Aug, 2020, 6:29:19 PM
                Author     : This PC
            */

            @charset "utf-8";

            @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700,600);

            html,
            html a {
                -webkit-font-smoothing: antialiased;
                text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
            }

           
            a {
                border: 0 none;
                outline: 0;
                text-decoration: none;
            }

            strong {
                font-weight: bold;
            }

            p {
                margin: 0.75rem 0 0;
            }

            h1 {
                font-size: 0.75rem;
                font-weight: normal;
                margin: 0;
                padding: 0;
            }

            input,
            button {
                border: 0 none;
                outline: 0 none;
            }

            button {
                background-color: #666;
                color: #fff;
            }

            button:hover,
            button:focus {
                background-color: #555;
            }

            img,
            .basket-module,
            .basket-labels,
            .basket-product {
                width: 100%;
            }

            input,
            button,
            .basket,
            .basket-module,
            .basket-labels,
            .item,
            .price,
            .quantity,
            .subtotal,
            .basket-product,
            .product-image,
            .product-details {
                float: left;
            }

            .price:before,
            .subtotal:before,
            .subtotal-value:before,
            .total-value:before,
            .promo-value:before {
                content: '??';
            }

            .hide {
                display: none;
            }

            main {
                clear: both;
                font-size: 0.75rem;
                margin: 0 auto;
                overflow: hidden;
                padding: 1rem 0;
                width: 960px;
            }

            .basket,
            aside {
                padding: 0 1rem;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .basket {
                width: 70%;
            }

            .basket-module {
                color: #111;
            }

            label {
                display: block;
                margin-bottom: 0.3125rem;
            }

            .promo-code-field {
                border: 1px solid #ccc;
                padding: 0.5rem;
                text-transform: uppercase;
                transition: all 0.2s linear;
                width: 48%;
                -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
                -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
                -o-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
                box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            }

            .promo-code-field:hover,
            .promo-code-field:focus {
                border: 1px solid #999;
            }

            .promo-code-cta {
                border-radius: 4px;
                font-size: 0.625rem;
                margin-left: 0.625rem;
                padding: 0.6875rem 1.25rem 0.625rem;
            }

            .basket-labels {
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc;
                margin-top: 1.625rem;
            }

            ul {
                list-style: none;
                margin: 0;
                padding: 0;
            }

            li {
                color: #111;
                display: inline-block;
                padding: 0.625rem 0;
            }

            li.price:before,
            li.subtotal:before {
                content: '';
            }

            .item {
                width: 25%;
            }

            .price,
            .quantity,
            .subtotal {
                width: 15%;
            }

            .subtotal {
                text-align: right;
            }

            .remove {
                bottom: 1.125rem;
                float: right;
                position: absolute;
                right: 0;
                text-align: right;
                width: 45%;
            }

            .remove button {
                background-color: transparent;
                color: #777;
                float: none;
                text-decoration: underline;
                text-transform: uppercase;
            }

            .item-heading {
                padding-left: 4.375rem;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .basket-product {
                border-bottom: 1px solid #ccc;
                padding: 1rem 0;
                position: relative;
            }

            .product-image {
                width: 35%;
            }

            .product-details {
                width: 65%;
            }

            .product-frame {
                border: 1px solid #aaa;
            }

            .product-details {
                padding: 0 1.5rem;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .quantity-field {
                background-color: #ccc;
                border: 1px solid #aaa;
                border-radius: 4px;
                font-size: 0.625rem;
                padding: 2px;
                width: 3.75rem;
            }

            aside {
                float: right;
                position: relative;
                width: 30%;
            }

            .summary {
                background-color: #eee;
                border: 1px solid #aaa;
                padding: 1rem;
                position: fixed;
                width: 250px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

            .summary-total-items {
                color: #666;
                font-size: 0.875rem;
                text-align: center;
            }

            .summary-subtotal,
            .summary-total {
                border-top: 1px solid #ccc;
                border-bottom: 1px solid #ccc;
                clear: both;
                margin: 1rem 0;
                overflow: hidden;
                padding: 0.5rem 0;
            }

            .subtotal-title,
            .subtotal-value,
            .total-title,
            .total-value,
            .promo-title,
            .promo-value {
                color: #111;
                float: left;
                width: 50%;
            }

            .summary-promo {
                -webkit-transition: all .3s ease;
                -moz-transition: all .3s ease;
                -o-transition: all .3s ease;
                transition: all .3s ease;
            }

            .promo-title {
                float: left;
                width: 70%;
            }

            .promo-value {
                color: #8B0000;
                float: left;
                text-align: right;
                width: 30%;
            }

            .summary-delivery {
                padding-bottom: 3rem;
            }

            .subtotal-value,
            .total-value {
                text-align: right;
            }

            .total-title {
                font-weight: bold;
                text-transform: uppercase;
            }

            .summary-checkout {
                display: block;
            }

            .checkout-cta {
                display: block;
                float: none;
                font-size: 0.75rem;
                text-align: center;
                text-transform: uppercase;
                padding: 0.625rem 0;
                width: 100%;
            }

            .summary-delivery-selection {
                background-color: #ccc;
                border: 1px solid #aaa;
                border-radius: 4px;
                display: block;
                font-size: 0.625rem;
                height: 34px;
                width: 100%;
            }

            @media screen and (max-width: 640px) {
                aside,
                .basket,
                .summary,
                .item,
                .remove {
                    width: 100%;
                }
                .basket-labels {
                    display: none;
                }
                .basket-module {
                    margin-bottom: 1rem;
                }
                .item {
                    margin-bottom: 1rem;
                }
                .product-image {
                    width: 40%;
                }
                .product-details {
                    width: 60%;
                }
                .price,
                .subtotal {
                    width: 33%;
                }
                .quantity {
                    text-align: center;
                    width: 34%;
                }
                .quantity-field {
                    float: none;
                }
                .remove {
                    bottom: 0;
                    text-align: left;
                    margin-top: 0.75rem;
                    position: relative;
                }
                .remove button {
                    padding: 0;
                }
                .summary {
                    margin-top: 1.25rem;
                    position: relative;
                }
            }

            @media screen and (min-width: 641px) and (max-width: 960px) {
                aside {
                    padding: 0 1rem 0 0;
                }
                .summary {
                    width: 28%;
                }
            }

            @media screen and (max-width: 960px) {
                main {
                    width: 100%;
                }
                .product-details {
                    padding: 0 1rem;
                }
            }.item-quantity {

            }

            .total-items {

            }

            .final-value {

            }

            #basket-subtotal {

            }


        </style>
        
        
    </head>
    <body>
        <div id="header">
            <div class="logo">
                &nbsp &nbsp &nbsp<img src="Logo.png.png" width="80" height="80">
            </div>  
            <nav>
                <form class="search" method="get" action="search.jsp"> 
                    <input name="id" placeholder="Search..." type="search">
                </form>
                <ul>
                    
                    <li>
                        <a href="mainpage.jsp">Shop</a>    
                    </li>
                    <li class="dropdown">
                        <a >Contact Us</a>     
                    </li>
                    <li>
                        <a href="castNew.jsp">Shopping Cart</a>
                    </li>
                    <li>
                        <a href="index.html">Logout</a>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="basket">
            <div class="basket-module">
                <table>
                    <div class="basket-labels">
                        <div class="li">
                            <tr>

                                <td  colspan="100"><center><h3>Item</h3><center></td>
                                    <td  colspan="100"><center><h3>Name</h3><center></td>
                                            <td  colspan="100"><center><h3>Price</h3><center></td>
                                                    <td  colspan="100"><center><h3>Quantity</h3><center></td>
                                                            <td  colspan="100"><center><h3>Sub Total</h3></td>
                                                                <td  colspan="100"><center><h3>Status</h3></td>

                                                                    </tr>
                                                                    </div> 
                                                                    <!--                        <div class="basket-labels">
                                                                                                <ul>
                                                                                                    <li class="item item-heading">Item</li>
                                                                                                    <li class="price">Name</li>
                                                                                                    <li class="price">Price</li>
                                                                                                    <li class="quantity">Quantity</li>
                                                                                                    <li class="subtotal">Subtotal</li>
                                                                                                </ul>
                                                                                            </div>-->
                                                                    <tr>

                                                                        <td colspan="100"><center><img src="<%=session.getAttribute("image")%>" width="100" height="150"></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("name")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("price")%></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("qty")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("total")%></center></td>
                                                                    <td colspan="100"><center><input type="submit" value="remove" action="
                                                                                <%request.getSession().removeAttribute("cartServlet1");%>"</center></td>
                                                                    </tr>
                                                                     <tr>

                                                                        <td colspan="100"><center><img src="a2.PNG" width="100" height="150"></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("name")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("price")%></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("qty")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("total")%></center></td>
                                                                    <td colspan="100"><center><input type="submit" value="remove" action="
                                                                                <%request.getSession().removeAttribute("cartServlet1");%>"</center></td>
                                                                    </tr>
<!--                                                                     <tr>

                                                                        <td colspan="100"><center><img src="<%=session.getAttribute("image")%>" width="100" height="150"></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("name")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("price")%></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("qty")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("total")%></center></td>
                                                                    <td colspan="100"><center><input type="submit" value="remove" action="
                                                                                <%request.getSession().removeAttribute("cartServlet1");%>"</center></td>
                                                                    </tr>
                                                                     <tr>

                                                                        <td colspan="100"><center><img src="<%=session.getAttribute("image")%>" width="100" height="150"></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("name")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("price")%></center></td>
                                                                    <td colspan="100"><center><%=session.getAttribute("qty")%></center></td>
                                                                    <td colspan="100"><center>$ <%=session.getAttribute("total")%></center></td>
                                                                    <td colspan="100"><center><input type="submit" value="remove" action="
                                                                                <%request.getSession().removeAttribute("cartServlet1");%>"</center></td>
                                                                    </tr>-->
                                                                    </div>

                                                                    </table>
                                                                    </div>
                                                                    </div>
                                                                    <aside>
                                                                        <div class="summary">
                                                                            <div class="summary-total-items"><span class="total-items"></span> Items in your Bag</div>
                                                                            <div class="summary-subtotal">
                                                                                <div class="subtotal-title">Subtotal</div>
                                                                                <div class="subtotal-value final-value" id="basket-subtotal"> <%=session.getAttribute("total")%></div>
                                                                                <div class="summary-promo hide">
                                                                                    <div class="promo-title">Promotion</div>
                                                                                    <div class="promo-value final-value" id="basket-promo"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="summary-delivery">
                                                                                <select name="delivery-collection" class="summary-delivery-selection">
                                                                                    <option value="0" selected="selected">Select Collection or Delivery</option>
                                                                                    <option value="collection">Collection</option>
                                                                                    <option value="first-class">Royal Mail 1st Class</option>
                                                                                    <option value="second-class">Royal Mail 2nd Class</option>
                                                                                    <option value="signed-for">Royal Mail Special Delivery</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="summary-total">
                                                                                <div class="total-title">Total</div>
                                                                                <div class="total-value final-value" id="basket-total"> <%=session.getAttribute("total")%></div>
                                                                            </div>
                                                                            <div class="summary-checkout">
                                                                                <form action="payment.jsp">
                                                                                    
                                                                                    <input type="submit"   class="checkout-cta" Value="Go to Secure Checkout " >
                                                                                </form>
                                                                                   
                                                                            </div>
                                                                        </div>
                                                                    </aside> 
                                                                         <div class="footer">
            Made for <a class="footer-text" href="https://github.com/Szask1a/coursework-DEA">DEA PROJECT 2020</a>
        </div>
        
        <script src="stylescript.js"></script>

                                                                    </body>
                                                                    </html>


