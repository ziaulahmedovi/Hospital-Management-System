
                  <div class="x_content">
                      <h1 class="text-center text-primary ">Add New Patient</h1>

                      <form class="form-horizontal form-label-left" method="post">



                    
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" name="p_name"  required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Age <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="name" class="form-control col-md-7 col-xs-12" name="p_Age"  required="required" type="text">
                        </div>
                      </div>
                    
                    
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Phone NO <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text"  name="P_con_no" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Address <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text"  name="Address" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                 
                   
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input  type="radio" value="Male" name="P_Sex" checked="">Male</input>
                                <input   type="radio" value="Female" name="P_Sex">Female</input>
                           
                     
                        </div>
                      </div>
                   <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Date Admitted <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input  class="form-control col-md-7 col-xs-12" name="Date_Admitted"  required="required" type="date" value="<?php echo date('Y-m-d')?>">
                        </div>
                      </div>
                
                
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Attends Doctor <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="form-control col-md-7 col-xs-12" name="doc_id">
                                <option value="Doctor">.......</option>
                                <option value="Nurse">..........</option>
                            </select>
                        </div>
                      </div>
                
                
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">Assigned Room <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <select class="form-control col-md-7 col-xs-12" name="room_id">
                                <option value="">.......</option>
                                <option value="">..........</option>
                            </select>
                        </div>
                      </div>
                      
                      <!--<div class="ln_solid"></div>-->
                      <div class="form-group">
                        <div class="col-md-6 col-md-offset-3 col-xs-12">
                          <button id="send" type="submit" class="btn btn-dark pull-right col-sm-12 ">Add New Patient</button>
                        </div>
                      </div>
                    </form>
                  </div>
         