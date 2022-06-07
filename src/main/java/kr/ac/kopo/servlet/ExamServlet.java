package kr.ac.kopo.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ExamServlet extends HttpServlet {
    /*
        http://localhost:9999/servlet/exam?name=hong&hobby=운동 입력 시
        웹 브라우저에 다음의 결과가 응답됨
        이름 : hong
        취미 : ~~~~
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        request.setCharacterEncoding("utf-8");  // Post방식에서는 한글이 깨지기 때문에 반드시 설정

        String name = request.getParameter("name");
        String[] hobby = request.getParameterValues("hobby");

        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("  <head>");
        out.println("      <title>메소드 요청방식</title>");
        out.println("  </head>");
        out.println("<body>");
        out.println("         =========================================<br>");
        out.println("         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출력결과<br>");
        out.println("         =========================================<br>");
        out.println("         이름 : " + name + "<br>");
        out.println("         취미 : ");
        for(String hobb : hobby){
            out.print(hobb + " ");
        }
        out.println("<br>");
        out.println("         =========================================<br>");
        out.println("</body>");
        out.println("</html>");
    }
}
