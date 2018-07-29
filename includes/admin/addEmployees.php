
                  <div class="x_content">
                      <h1 class="text-center text-primary ">Add New Employees</h1>

                      <form class="form-horizontal form-label-left" method="post">

                    
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" name="Emp_name"  required="required" type="text">
                        </div>
                      </div>
                    
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Joining Date <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input  class="form-control col-md-7 col-xs-12" name="joiningDate"  required="required" type="date" value="<?php echo date('Y-m-d')?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Phone NO <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="email" name="con_no" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                 
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Salary <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" name="Salary" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input  type="radio" value="Male" name="Sex" checked="">Male</input>
                                <input   type="radio" value="Female" name="Sex">Female</input>
                           
                     
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Occupation <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="form-control col-md-7 col-xs-12" name="Emp_type">
                                <option value="Doctor">Doctor</option>
                                <option value="Nurse">Nurse</option>
                                <option value="Receptionist">Receptionist</option>
                            </select>
                        </div>
                      </div>
                 
                      <div class="item form-group">
                        <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">Experience </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input  type="text" name="Experience " class="form-control col-md-7 col-xs-12" required="required">
                        </div>
                      </div>
                      
                      <!--<div class="ln_solid"></div>-->
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3 col-xs-12">
                          <button id="send" type="submit" class="btn btn-dark pull-right col-sm-12 ">Add New Employees</button>
                        </div>
                      </div>
                    </form>
                  </div>
         