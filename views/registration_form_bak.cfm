<div class="main_container full_size container_8 clearfix">
		     <div class="section">
				<h2>Wizard Registration Form</h2>
				<span>Please Select your Status, College or Department and click on 'Request Login Access'.
We will email you back once your account is active</span>
			</div>

			
			
			<div class="columns clearfix">
				<form action="register.cfm" method="post" class="validate_form" name="regForm" id="regForm">
				
				<fieldset class="label_side top">
					<label for="fauid_field">Username</label>
						<div>
							<input type="text" id="fauid" name="fauid" class="required">
						</div>
				</fieldset>		

				<fieldset class="label_top">
			
			<label for="text_field_inline">Access Levels</label>
			<div>
			<fieldset class="label_side top">
				<label for="department">
					<input checked="checked" id="status_chair" name="status" type="radio" value="chair"/>Dept.
				</label>
				<div>
					<select id="department" name="department">
						<option value="17">Accounting</option>
						<option value="3">Anthropology</option>
						<option value="53">Architecture</option>
						<option value="4">Arts & Letters Dean's Office</option>
						<option value="44">Biological Sciences</option>
						<option value="25">Biomedical Science</option>
						<option value="18">Business Dean's Office</option>
						<option value="45">Chemistry & Biochemistry</option>
						<option value="35">Civil, Environmental & Geomatics Engineering</option>
						<option value="5">Communication & Multimedia Studies</option>
						<option value="27">Communication Science & Disorders</option>
						<option value="36">Computer & Electrical Eng & Comp Science</option>
						<option value="28">Counselor Education</option>
						<option value="54">Criminology & Criminal Justice</option>
						<option value="46">Ctr for Complex Systems & Brain Sciences</option>
						<option value="6">Ctr for Women Gender & Sexuality Studies</option>
						<option value="29">Curriculum, Culture & Educ Inquiry</option>
						<option value="55">Design & Social Inquiry Dean's Office</option>
						<option value="19">Economics</option>
						<option value="30">Ed Leadership & Research Methodology</option>
						<option value="31">Education Dean's Office</option>
						<option value="37">Engineering Dean's Office</option>
						<option value="7">English</option>
						<option value="32">Exceptional Student Education</option>
						<option value="33">Exercise Science & Health Promotion</option>
						<option value="20">Finance</option>
						<option value="1">Freshman Advising Services</option>
						<option value="47">Geosciences</option>
						<option value="8">History</option>
						<option value="39">Honors College Dean's Office</option>
						<option value="40">Honors College Humanities</option>
						<option value="41">Honors College Math & Sciences</option>
						<option value="42">Honors College Social Sciences</option>
						<option value="21">Industry Studies</option>
						<option value="22">Info Technology & Operations Mgmt</option>
						<option value="26">Integrated Medical Science</option>
						<option value="9">Jewish Studies</option>
						<option value="10">Lang, Linguistics & Comp Lit</option>
						<option value="23">Management</option>
						<option value="24">Marketing</option>
						<option value="48">Mathematical Sciences</option>
						<option value="11">Music</option>
						<option value="43">Nursing</option>
						<option value="38">Ocean & Mechanical Engineering</option>
						<option value="12">Philosophy</option>
						<option value="49">Physics</option>
						<option value="13">Political Science</option>
						<option value="50">Psychology</option>
						<option value="56">Public Administration</option>
						<option value="51">Science Dean's Office</option>
						<option value="52">Science Student Services</option>
						<option value="57">Social Work</option>
						<option value="14">Sociology</option>
						<option value="34">Teaching and Learning</option>
						<option value="15">Theatre & Dance</option>
						<option value="2">Undergraduate Studies Dean's Office</option>
						<option value="58">Urban & Regional Planning</option>
						<option value="16">Visual Arts & Arts History</option>
					</select>
				</div>
			</fieldset>

				<fieldset class="label_side top">
				<label for="department">
					<input id="status_dean" name="status" type="radio" value="dean"/> College
				</label>
				<div>
					<select disabled="disabled" id="school" name="school">
						<option value="11">00 - No College Designated</option>
						<option value="15">AL - D. F. Schmidt Col Arts Letters</option>
						<option value="13">BA - College of Business</option>
						<option value="21">BI - C.E. Schmidt Coll Med</option>
						<option value="14">ED - College of Education</option>
						<option value="16">EG - Coll Engineering Computer Sci</option>
						<option value="4">HC - H.L. Wilkes Honors College</option>
						<option value="8">NU - C.E. Lynn Coll of Nursing</option>
						<option value="17">SC - C.E. Schmidt Coll of Science</option>
						<option value="3">UL - University Libraries</option>
						<option value="1">UP - Coll Design and Social Inquiry</option>
					</select>
				</div>
			</fieldset>

			</div>
			</fieldset>

				<div class="button_bar clearfix">
					<button class="dark blue no_margin_bottom link_button" type="submit">
						<div class="ui-icon ui-icon-check"></div>
						<span>Request Login Access</span>
					</button>
					<button class="light send_right close_dialog">
						<div class="ui-icon ui-icon-closethick"></div>
						<span>Cancel</span>
					</button>
				</div>
			

				</form>
			</div>
</div>