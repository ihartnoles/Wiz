<cfscript>
	qDepts = request.event.getArg('qDepts');	
	qSchools = request.event.getArg('qSchools');	
</cfscript>

<div id="pjax">
		<div id="wrapper">
			<div class="isolate">
				<div class="center">
<div class="box light grid_16">
						<div class="block">
							<a href="index.php" id="login_logo" width="154" height="80"><span>FAU</span></a>
							<h2 class="section">Wizard Registration Form</h2>
							
							<div class="toggle_container">
							<div class="wizard">
							<div class="wizard_steps">
								<ul class="clearfix">
									<li class="current">
										<a href="#step_1" class="clearfix">
											<span>1. <strong>Username</strong></span>
											<small>Enter your FAU username</small>
										</a>
									</li>
									<li class="current">
										<a href="#step_2" class="clearfix">
											<span>2. <strong>Select Access</strong></span>
											<small>Select your College or Dept.</small>
										</a>
									</li>
									<li class="current">
										<a href="#step_3" class="clearfix">
											<span>3. <strong>Request Login</strong></span>
											<small>Click on 'Submit'</small>
										</a>
									</li>
									<li class="current">
										<a href="#step_4" class="clearfix">
											<span>4. <strong>Check Your Email</strong></span>
											<small>We will email you within 24 hours.</small>
										</a>
									</li>
									
								</ul>
							</div>
							</div>
							</div>

							<form class="validate_form">
							
							<fieldset class="label_side top">
								<label for="username_field">FAU Username</label>
								<div>
									<input type="text" id="fauid" name="fauid" class="required text">
									<div class="required_tag"></div>
								</div>
							</fieldset>	

							<fieldset class="label_side top">
								<label for="dept">Dept.</label>
								<div>
									<select id="department" name="department">
											<cfoutput>
												<cfloop query="#qDepts#">
													<option value="#qDepts.id#">#qDepts.name#</option>
												</cfloop>
											</cfoutput>
									</select>
								</div>
							</fieldset>

							<fieldset class="label_side">
								<label for="College">College</label>
								<div class="clearfix">
									<select id="school" name="school">
										<cfoutput>
												<cfloop query="#qSchools#">
													<option value="#qSchools.id#">#qSchools.name# - #qSchools.description#</option>
												</cfloop>
											</cfoutput>
									</select>
								</div>
							</fieldset>

							<!---
							<fieldset class="label_side top">
								<label for="required_field">Text Field<span>Regular field</span></label>
								<div>
									<input id="required_field" name="required_field" type="text" class="required">
									<div class="required_tag"></div>
								</div>
							</fieldset>

							

							<fieldset class="label_side">
								<label for="required_textarea">Textarea<span>Autogrow Textarea</span></label>
								<div class="clearfix">
									<textarea id="required_textarea" name="required_textarea" class="autogrow required"></textarea>
									<div class="required_tag"></div>
								</div>
							</fieldset>

							<fieldset class="label_side">
								<label for="required_email">Email Address</label>
								<div>
									<input type="text" id="required_email" name="required_email" class="required email">
									<div class="required_tag"></div>
								</div>
							</fieldset>
							--->

							<div class="button_bar clearfix">
								<button class="blue" type="submit">
									<img height="24" width="24" alt="Bended Arrow Right" src="images/icons/small/white/bended_arrow_right.png">
									<span>Submit</span>
								</button>
							</div>

							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>