<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
Striped by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Blog</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <!--[if lte IE 8]>
    <script src="../../css/ie/html5shiv.js"></script><![endif]-->
    <script src="../../resources/js/jquery.min.js"></script>
    <script src="../../resources/js/skel.min.js"></script>
    <script src="../../resources/js/skel-layers.min.js"></script>
    <script src="../../resources/js/init.js"></script>
    <script src="../../resources/js/main.js"></script>

    <link rel="stylesheet" href="../../resources/css/skel.css"/>
    <link rel="stylesheet" href="../../resources/css/style.css"/>
    <link rel="stylesheet" href="../../resources/css/style-desktop.css"/>
    <link rel="stylesheet" href="../../resources/css/style-wide.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="../../resources/css/ie/v8.css"/><![endif]-->
</head>
<!--
    Note: Set the body element's class to "left-sidebar" to position the sidebar on the left.
    Set it to "right-sidebar" to, you guessed it, position it on the right.
-->
<body class="left-sidebar">

<!-- Wrapper -->
<div id="wrapper">
    <c:set var="ac" scope="session" value="${access}"/>
    <c:if test="${page == null}">

        <c:set var="page" scope="session" value="1"/>
    </c:if>
    <!-- Content -->
    <div id="content">
        <div class="inner">

            <!-- Post -->
            <c:set var="count" scope="session" value="0"/>
            <c:forEach begin="${(page*2)-2}" end="${(page*2)-1}" var="p" items="${posts}">



            <article class="box post post-excerpt">

                <header>
                    Number of post - ${p.id}
                    <!--
                        Note: Titles and subtitles will wrap automatically when necessary, so don't worry
                        if they get too long. You can also remove the <p> entirely if you don't
                        need a subtitle.
                    -->
                    <h2><a href="#">${p.title}</a></h2>
                </header>
                <p>${p.context}</p>

                <a href="#" class="image featured"><img height="100%" width="100%" src="${p.image}" alt=""/></a>

                    <c:set var="count" scope="session" value="1"/>
                <c:if test="${ac == true}">

                <button class="button" id="DeleteButton" value="Delete post" onclick="DeletePost(${p.id})"></button>
                </c:if>


                </c:forEach>
                <c:if test="${count == 0}">
                    <%--ф бага з infinity стр.--%>
                <script>
                    var pages=${pages};

                    window.location.assign("http://localhost:8080/?page="+pages);
                </script>
                </c:if>
                    <c:if test="${ac == true}">

                    <form action="addPost" method="post">
                        <input type="text" name="title" required>
                        <input type="text" name="context" required>

                        <input name="page" value="${page}" type="hidden">
                        <input type="submit" name="add" value="add" align="right">
                            <%--<c:forEach items="${images}" var="img">--%>

                            <%--<select name="image">--%>
                            <%--<option value="${img}" style="background: url(${img}) no-repeat; padding-left: 20px; width: 100px; height: 100px;" > ${img}</option>--%>
                            <%--</select>--%>
                            <%--</c:forEach>--%>

                    </form>
                    </c:if>


                    <!-- Pagination -->
                    <div class="pagination">
                        <!--<a href="#" class="button previous">Previous Page</a>-->

                    <div class="pages">

                        <c:choose>
                            <c:when test="${page>3}">
                                <a href="/?page=${page-3}">${page-3}</a>
                                <a href="/?page=${page-2}">${page-2}</a>
                                <a href="/?page=${page-1}">${page-1}</a>
                            </c:when>
                            <c:when test="${page>2}">
                                <a href="/?page=${page-2}">${page-2}</a>
                                <a href="/?page=${page-1}">${page-1}</a>
                            </c:when>
                            <c:when test="${page>1}">
                                <a href="/?page=${page-1}">${page-1}</a>
                            </c:when>

                        </c:choose>
                        <a href="/?page=${page}" class="active">${page}</a>

                        <c:choose>
                            <c:when test="${pages > page +4}">
                                <a href="/?page=${page+1}">${page+1}</a>
                                <a href="/?page=${page+2}">${page+2}</a>
                                <a href="/?page=${page+3}">${page+3}</a>
                                <a href="/?page=${page+4}">${page+4}</a>
                            </c:when>
                            <c:when test="${pages > page +3}">
                                <a href="/?page=${page+1}">${page+1}</a>
                                <a href="/?page=${page+2}">${page+2}</a>
                                <a href="/?page=${page+3}">${page+3}</a>
                            </c:when>
                            <c:when test="${pages > page +2}">
                                <a href="/?page=${page+1}">${page+1}</a>
                                <a href="/?page=${page+2}">${page+2}</a>
                            </c:when>
                            <c:when test="${pages > page +1}">
                                <a href="/?page=${page+1}">${page+1}</a>
                            </c:when>


                        </c:choose>


                        <c:if test="${page < pages}">


                            <span>&hellip;</span>
                            <a href="/?page=${pages}">${pages}</a>
                        </c:if>
                    </div>

                    <c:if test="${page < pages}">

                        <a href="/?page=${page+1}" class="button next">Next Page</a>
                    </c:if>
                    <c:if test="${page > 1}">

                        <a href="/?page=${page-1}" name="page" class="button next">Previous Page</a>
                    </c:if>
                </div>

        </div>
    </div>


    <!-- Sidebar -->
    <div id="sidebar">

        <!-- Logo -->

        <h1 id="logo"><a href="#">Blog<c:if test="${ac == true}">${username }</c:if> </a></h1>

        <!-- Nav -->
        <nav id="nav">
            <ul>
                <li class="current"><a href="/">Post</a></li>

                <c:if test="${ac == null || ac == false}">

                    <li><a href="registration">Registration</a></li>
                    <li><a href="login">Log In</a></li>
                </c:if>
                <li><a href="gallery">Gallery</a></li>
                <c:if test="${ac ==true}">


                    <li><a href="addPost">Add  Post / Images</a></li>
                    <li><a href="logout">Log Out</a></li>
                </c:if>

            </ul>
        </nav>

        <!-- Search -->
        <section class="box search">
            <form method="post" action="#">
                <input type="text" class="text" name="search" placeholder="Search"/>
            </form>
        </section>

        <!-- Text -->
        <section class="box text-style1">
            <div class="inner">
                <p>
                    <strong>Striped:</strong> A free and fully responsive HTML5 site
                    template designed by <a href="http://n33.co/">AJ</a> for <a href="http://html5up.net/">HTML5 UP</a>
                </p>
            </div>
        </section>

        <!-- Recent Posts -->
        <section class="box recent-posts">
            <header>
                <h2>Recent Posts</h2>
            </header>
            <ul>
                <li><a href="#">Lorem ipsum dolor</a></li>
                <li><a href="#">Feugiat nisl aliquam</a></li>
                <li><a href="#">Sed dolore magna</a></li>
                <li><a href="#">Malesuada commodo</a></li>
                <li><a href="#">Ipsum metus nullam</a></li>
            </ul>
        </section>

        <!-- Recent Comments -->
        <section class="box recent-comments">
            <header>
                <h2>Recent Comments</h2>
            </header>
            <ul>
                <li>case on <a href="#">Lorem ipsum dolor</a></li>
                <li>molly on <a href="#">Sed dolore magna</a></li>
                <li>case on <a href="#">Sed dolore magna</a></li>
            </ul>
        </section>

        <!-- Calendar -->
        <section class="box calendar">
            <div class="inner">
                <table>
                    <caption>July 2014</caption>
                    <thead>
                    <tr>
                        <th scope="col" title="Monday">M</th>
                        <th scope="col" title="Tuesday">T</th>
                        <th scope="col" title="Wednesday">W</th>
                        <th scope="col" title="Thursday">T</th>
                        <th scope="col" title="Friday">F</th>
                        <th scope="col" title="Saturday">S</th>
                        <th scope="col" title="Sunday">S</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="4" class="pad"><span>&nbsp;</span></td>
                        <td><span>1</span></td>
                        <td><span>2</span></td>
                        <td><span>3</span></td>
                    </tr>
                    <tr>
                        <td><span>4</span></td>
                        <td><span>5</span></td>
                        <td><a href="#">6</a></td>
                        <td><span>7</span></td>
                        <td><span>8</span></td>
                        <td><span>9</span></td>
                        <td><a href="#">10</a></td>
                    </tr>
                    <tr>
                        <td><span>11</span></td>
                        <td><span>12</span></td>
                        <td><span>13</span></td>
                        <td class="today"><a href="#">14</a></td>
                        <td><span>15</span></td>
                        <td><span>16</span></td>
                        <td><span>17</span></td>
                    </tr>
                    <tr>
                        <td><span>18</span></td>
                        <td><span>19</span></td>
                        <td><span>20</span></td>
                        <td><span>21</span></td>
                        <td><span>22</span></td>
                        <td><a href="#">23</a></td>
                        <td><span>24</span></td>
                    </tr>
                    <tr>

                        <td><a href="#">25</a></td>
                        <td><span>26</span></td>
                        <td><span>27</span></td>
                        <td><span>28</span></td>
                        <td class="pad" colspan="3"><span>&nbsp;</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Copyright -->
        <ul id="copyright">
            <li>&copy; Untitled.</li>
            <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
        </ul>

    </div>

</div>

</body>
</html>