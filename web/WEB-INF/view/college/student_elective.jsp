<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">选课</h1>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        已开设课程信息
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>课程ID</th>
                                    <th>课程名称</th>
                                    <th>授课老师</th>
                                    <th>授课周次,星期,节次</th>
                                    <th>上课教室</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="section" items="${sectionList}">
                                    <tr>
                                        <td>${section.sectionId}</td>
                                        <td>${section.courseTitle}</td>
                                        <td>${section.teacher}</td>
                                        <td>${section.weeks}周 ${section.week} ${section.time}节</td>
                                        <td>${section.classroom}</td>
                                        <td>
                                            <a href="/elective.do?sectionId=${section.id}"
                                               onclick="return confirm('是否选择该课')">选课</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <!-- /.container-fluid -->
    </div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/bottom.jsp"></jsp:include>