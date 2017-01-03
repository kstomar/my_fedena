#Fedena
#Copyright 2011 Foradian Technologies Private Limited
#
#This product includes software developed at
#Project Fedena - http://www.projectfedena.org/
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

class SubjectCategoriesController < ApplicationController
  #layout :choose_layout
  #filter_access_to :all
  #before_filter :login_required
  #  filter_access_to :edit_privilege
  
  def new
    @subject_category = SubjectCategory.new
  end

  def index
    @subject_category = SubjectCategory.new
    @subject_categories = SubjectCategory.all
  end
  
  def create
    @subject_category = SubjectCategory.new(params[:subject_categories])
    if request.post? and @subject_category.save
      flash[:notice] = "Subject category has been saved."
      redirect_to :action => 'index'
    end
  end

  def destroy
    @subject_category = SubjectCategory.find(params[:id])
    @subject_category.delete
    redirect_to :action => 'index'
  end

  def edit
    @subject_category = SubjectCategory.find(params[:id])
    
  end

  def update
    @subject_category = SubjectCategory.find(params[:id])
    @subject_category.update_attribute(:name, params[:name])
    redirect_to :action => 'index'
  end

end