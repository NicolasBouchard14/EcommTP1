class TestsController < ApplicationController
  def index
    @tests = Test.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tests }
    end
  end

  def show
    @test = Test.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test }
    end
  end

  def new
    @test = Test.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test }
    end
  end

  def edit
    @test = Test.find(params[:id])
  end

  def create
    @test = Test.new(project_params)
    respond_to do |format|
      if @test.save
        format.html { redirect_to(@test, :notice => 'Test was successfully created.') }
        format.xml  { render :xml => @test, :status => :created, :location => @test }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @test = Test.find(params[:id])
    respond_to do |format|
      if @test.update_attributes(test_params)
        format.html { redirect_to(@test, :notice => 'Test was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    respond_to do |format|
      format.html { redirect_to(test_url) }
      format.xml  { head :ok }
    end
  end

  private

  def test_params
    params.require(:project).permit(
      :nom
    )
  end
end
