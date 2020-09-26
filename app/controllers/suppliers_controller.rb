class SuppliersController < ApplicationController
  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def supplier_params
    params.require(:supplier).permit(
    :display_name, :company_name, :email, :password, :password_confirmation, 
    :family_name_in_charge, :first_name_in_charge, :kana_family_name_in_charge, :kana_first_name_in_charge,
    :postal_code, :prefecture_id, :city, :street_address, :building, :phone_number, :mobile_number, 
    )
  end

end
