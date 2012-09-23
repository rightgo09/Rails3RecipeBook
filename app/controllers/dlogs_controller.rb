class DlogsController < ApplicationController
  # GET /dlogs
  # GET /dlogs.xml
  def index
    @dlogs = Dlog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dlogs }
      format.json { render :json => @dlogs }
    end
  end

  # GET /dlogs/1
  # GET /dlogs/1.xml
  def show
    @dlog = Dlog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dlog }
    end
  end

  # GET /dlogs/new
  # GET /dlogs/new.xml
  def new
    @dlog = Dlog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dlog }
    end
  end

  # GET /dlogs/1/edit
  def edit
    @dlog = Dlog.find(params[:id])
  end

  # POST /dlogs
  # POST /dlogs.xml
  def create
    @dlog = Dlog.new(params[:dlog])

    respond_to do |format|
      if @dlog.save
        format.html { redirect_to(@dlog, :notice => 'Dlog was successfully created.') }
        format.xml  { render :xml => @dlog, :status => :created, :location => @dlog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dlog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dlogs/1
  # PUT /dlogs/1.xml
  def update
    @dlog = Dlog.find(params[:id])

    respond_to do |format|
      if @dlog.update_attributes(params[:dlog])
        format.html { redirect_to(@dlog, :notice => 'Dlog was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dlog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dlogs/1
  # DELETE /dlogs/1.xml
  def destroy
    @dlog = Dlog.find(params[:id])
    @dlog.destroy

    respond_to do |format|
      format.html { redirect_to(dlogs_url) }
      format.xml  { head :ok }
    end
  end
end
