<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form id="questionForm">
<div class="content_body">
	<questionHeader>
		<strong>문제 : 각 소스 파일의 일부분 중 빈칸을 모두 채우시오. (영어로 모를 시 한글명이나 설명으로 쓸 것.)</strong>
		<br/>
	</questionHeader>
	<br/>
	<div id="question_1">
		<strong name="question_1_title">
			<span>web.xml</span>
		</strong>
		<div class="answer_area">
			<span id="question_1_answer">
				<div class="question_tag">
					<pre><font class="web_tag">&lt;servlet&gt;</font></pre>
					<pre><font class="web_tag">	&lt;servlet-name&gt;</font>limeServlet<font class="web_tag">&lt;/servlet-name&gt;</font></pre>
					<pre><font class="web_tag">	&lt;servlet-class&gt;</font>org.springframework.web.servlet.DispatcherServlet<font class="web_tag">&lt;/servlet-class&gt;</font></pre>
					<pre><font class="web_tag">	&lt;init-param&gt;</font></pre>
					<pre><font class="web_tag">		&lt;param-name&gt;</font>contextConfigLocation<font class="web_tag">&lt;/param-name&gt;</font></pre>
					<pre><font class="web_tag">		&lt;param-value&gt;</font>classpath*:spring/lime-dispatcher.xml<font class="web_tag">&lt;/param-value&gt;</font></pre>
					<pre><font class="web_tag">	&lt;/init-param&gt;</font></pre>
					<pre><font class="web_tag">	&lt;load-on-startup&gt;</font>1<font class="web_tag">&lt;/load-on-startup&gt;</font></pre>
					<pre><font class="web_tag">&lt;/servlet&gt;</font></pre>
					<pre><font class="web_tag">&lt;servlet-mapping&gt;</font></pre>
					<pre><font class="web_tag">	&lt;servlet-name&gt;</font>appServlet<font class="web_tag">&lt;/servlet-name&gt;</font></pre>
					<pre><font class="web_tag">	&lt;url-pattern&gt;</font><input class="input_answer" type="text" id="input_que1" name="input_que1" value=""/><font class="web_tag">&lt;/url-pattern&gt;</font></pre>
					<pre><font class="web_tag">&lt;/servlet-mapping&gt;</font></pre>
				</div>
			</span>
		</div>
	</div>
	<br/>
	<div id="question_2">
		<strong name="question_2_title">
			<span>FreeBoardController.java</span>
		</strong>
		<div class="answer_area">
			<span id="question_1_answer">
				<div class="question_tag">
					<pre><input class="input_answer" type="text" id="input_que2_1" name="input_que2_1" value=""/></pre>
					<pre><font class="java_tag">public class </font>FreeBoardController {</pre>
					<pre>	</pre>
					<pre>	<input class="input_answer" type="text" id="input_que2_2" name="input_que2_2" value=""/></pre>
					<pre>	<font class="java_tag">private</font> FreeBoardService <font class="java_statement_tag">freeBoardService</font>;</pre>
					<pre>	</pre>
					<pre>	<font class="java_annotation_tag">@RequestMapping</font>(<font class="java_statement_tag">"/main.ino"</font>)</pre>
					<pre>	<font class="java_tag">public</font> <input class="input_answer" type="text" id="input_que2_3" name="input_que2_3" value=""/> main(HttpServletRequest <font class="java_statement_name_tag">request</font>){</pre>
					<pre>		<input class="input_answer" type="text" id="input_que2_4" name="input_que2_4" value=""/> <font class="java_statement_name_tag">mav</font> = <font class="java_tag">new</font> <input class="input_answer" type="text" id="input_que2_5" name="input_que2_5" value=""/>();</pre>
					<pre>		List <font class="java_statement_name_tag">list</font> = <font class="java_statement_tag">freeBoardService</font>.freeBoardList();</pre>
					<pre>		<font class="java_statement_name_tag">mav</font>.<input class="input_answer" type="text" id="input_que2_6" name="input_que2_6" value=""/>(<font class="java_statement_tag">"boardMain"</font>);</pre>
					<pre>		<font class="java_statement_name_tag">mav</font>.<input class="input_answer" type="text" id="input_que2_7" name="input_que2_7" value=""/>(<font class="java_statement_tag">"freeBoardList"</font>,<font class="java_statement_name_tag">list</font>);</pre>
					<pre>	<font class="java_tag">return</font> <font class="java_statement_name_tag"> mav</font>;</pre>
					<pre>}</pre>
				</div>
			</span>
		</div>
	</div>
	
	<br/>
	
	<div id="question_3">
		<strong name="question_3_title">
			<span>FreeBoardService.java</span>
		</strong>
		<div class="answer_area">
			<span>
				<div class="question_tag">
					<pre><input class="input_answer" type="text" id="input_que3_1" name="input_que3_1" value=""/></pre>
					<pre><font class="java_tag">public class </font>FreeBoardService {</pre>
					<pre>	</pre>
					<pre>	<input class="input_answer" type="text" id="input_que3_2" name="input_que3_2" value=""/></pre>
					<pre>	<font class="java_tag">private</font> <input class="input_answer" type="text" id="input_que3_3" name="input_que3_3" value=""/> <font class="java_statement_tag">sqlSessionTemplate</font>;</pre>
					<pre>	</pre>
					<pre>	<font class="java_tag">public</font> <input class="input_answer" type="text" id="input_que3_4" name="input_que3_4" value=""/> freeBoardList(){</pre>
					<pre>		<font class="java_tag">return</font> <font class="java_statement_tag"> sqlSessionTemplate</font>.<input class="input_answer" type="text" id="input_que3_5" name="input_que3_5" value=""/>(<font class="java_statement_tag">"freeBoardGetList"</font>);</pre>
					<pre>	}</pre>
					<pre>}</pre>
				</div>
			</span>
		</div>
	</div>
	
	<br/>
	
	<div id="question_4">
		<strong name="question_4_title">
			<span>1. 신규 부서의 경우 일시적으로 사원이 없는 경우도 있다고 가정하고 DEPT와 EMP를 조인하되 사원이 없는 부서 정보도 같이 출력하도록 할 때, SQL 문장의 빈 칸 안에 들어갈 내용을 기술 하시오.</span>
		</strong>
		<div class="answer_area">
			<span>
				<div class="question_tag">
					<pre>SELECT E.ENAME, D.DEPTNO, D.DNAME</pre>
					<pre>  FROM DEPT D <input class="input_answer" type="text" id="input_que4_1" name="input_que4_1" value=""></pre>
					<pre>       EMP E</pre>
					<pre>    ON D.DEPTNO = E.DEPTNO;</pre>
				</div>
			</span>
		</div>
	</div>
	
	<br/>
	
	<div id="question_5">
		<strong name="question_5_title">
			<span>2. EMP 테이블(사원 테이블)의 생성 SQL 구문이 다음과 같을 때 SQL 문장을 완성하시오.</span>
		</strong>
		<div class="answer_area">
			<span>
				<div class="question_tag">
					<pre>/* 사원 테이블 */</pre>
					<pre>CREATE TABLE EMP</pre>
					<pre>	EMPNO NUMBER PRIMARY KEY,	/* 사원번호 */</pre>
					<pre>	ENAME VARCHAR2(100),		/* 사원명 */</pre>
					<pre>	DEPTNO NUMBER			/* 부서번호 */</pre>
					<pre>);</pre>
				</div>
			</span>
		</div>
		<strong name="question_5_1_title">
			<span> 2-1) SI 부서(부서번호 : 20)의 '이동식' 사원을 추가하는 SQL을 추가하는 SQL을 작성하시오 (단, 사원번호는 3으로 한다)</span>
		</strong>
		<textarea class="input_answer"  rows="15" cols="50"></textarea>
		<strong name="question_5_2_title">
			<span> 2-2) EMP 테이블의 사원번호가 3인 사원의 이름을 홍길동으로 수정하는 SQL을 작성하시오.</span>
		</strong>
		<textarea class="input_answer"  rows="15" cols="50"></textarea>
	</div>
	
	<br/>
	
	<div id="question_6">
		<strong name="question_6_title">
			<span>3. 다음 AJAX 통신에 필요한 값들을 보기에서 고르시오.</span>
		</strong>
		<div class="answer_area">
			<span>
				<div class="question_tag">
					<ul>
						<li>get,post</li>
						<li>type</li>
						<li>success</li>
						<li>error</li>
						<li>url</li>
						<li>data</li>
						<li>syncronize</li>
						<li>async</li>
					</ul>
					
				</div>
			</span>
		</div>
		<div class="answer_area">
			<span>
				<div class="question_tag">
					<pre><font class="java_tag">function</font> getList() {</pre>
					<pre>	$.ajax({</pre>
					<pre>		<input class="input_answer"  type="text"> : <font class="java_statement_tag">"/getList.do"</font>,</pre>
					<pre>		<input class="input_answer"  type="text"> : {<font class="java_statement_tag">"page"</font> : <font class="java_statement_tag">"3"</font>},</pre>
					<pre>		<input class="input_answer"  type="text"> : <font class="java_statement_tag">"POST"</font>,</pre>
					<pre>		contentType : <font class="java_statement_tag">"application/json"</font>,</pre>
					<pre>		dataType : <font class="java_statement_tag">"json"</font>,</pre>
					<pre>		<input class="input_answer"  type="text"> : <font class="java_tag">true</font></pre>
					<pre>	}).done(<font class="java_tag">function</font>(data) {</pre>
					<pre>		console.log(data);</pre>
					<pre>	})</pre>
					<pre>	.fail(<font class="java_tag">function</font>(e) {</pre>
					<pre>		console.log(e);</pre>
					<pre>	});</pre>
					<pre>}</pre>
				</div>
			</span>
		</div>
		
	</div>
	<questionFooter>
		<input type="button" id="screenShot" value="제출">
		<input type="button" id="initScreen" value="화면 초기화">
	</questionFooter>
	
</div>
</form>
