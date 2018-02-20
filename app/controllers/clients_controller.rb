class ClientsController < ApplicationController

  # GET /clients
  # GET /clients.xml
    def index
      @clients = Client.all
      respond_to do |format|
        format.html #index.html.erb
        format.xml { render :xml => @clients }
      end
    end

# GET /clients/client1
# GET /clients/client1.xml
  def show
    @client = Client.find(params[:id])
    if @client.nil?
      @clients = Client.all
      flash.now[:alert] = "Les détails du client n'ont pas été trouvés"
      render "index"
    end
    respond_to do |format|
      format.html #show.html.erb
      format.xml  { render :xml => @client }
    end
  end

# GET /clients/new
# GET /clients/new.xml
  def new
    @client = Client.new
    respond_to do |format|
      format.html #new.html.erb
      format.xml { render :xml => @client }
    end
  end

# GET /clients/client1/edit
  def edit
    @client = Client.find(params[:id])
  end

# POST /clients
# POST /clients.xml
  def create
    @client = Client.new(client_params)
    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Client was successfully created.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

# PUT /clients/client1
# PUT /clients/client1.xml
  def update
    @client = Client.find(params[:id])
    respond_to do |format|
      if @client.update_attributes(client_params)
        format.html { redirect_to(@client, :notice => 'Client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

# DELETE /clients/client1
# DELETE /clients/client1.xml
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to(clients_url) }
      format.xml  { head :ok }
    end
  end

###########################################################################
  private

  def client_params
    params.require(:client).permit(
      :prenom, :nom, :dateNaissance, :nas, :nombreEnfants, :compteTaxesProprietaire,
      addresse_attributes: [:id, :numeroCivique, :rue, :codePostal, :ville, :province],
      etudes_attributes: [:id, :secteurEtudes, :niveau, :dateDebut, :dateCom, :client_id, institution_attributes: [:id, :nom, addresse_attributes: [:id, :numeroCivique, :rue, :codePostal, :ville, :province]]],
      client_has_enfants_attributes: [:id, :lien, :enfant_id, enfant_attributes: [:id, :nom, :prenom, :dateNaissance]],
      client_etat_civils_attributes: [:id, :dateDebut, :dateFin, :etat_civil_id, etat_civil_attributes: [:id, :type]]
    )
  end
end
