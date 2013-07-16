class ProformasController < ApplicationController
  def new # displays p page
      #dashboard
  end

  def create # grabs info from p page and send to database via objects
    p = Proforma.new
    p.name = params[:name]
    p.address = params[:address]
    p.state = params[:state]
    p.sqft = params[:sqft].to_i
    p.units = params[:units].to_i
    p.purchase_price = params[:purchase_price].to_i
    p.sale_price = params[:sale_price].to_i
    p.rev_growth = params[:rev_growth].to_f
    p.opex_growth = params[:opex_growth].to_f
    p.vacancy = params[:vacancy].to_f
    p.discount_rate = params[:discount_rate].to_f
    p.save

    r = Revenue.new
    r.rent = params[:rent].to_f
    r.parking = params[:parking].to_f
    r.storage = params[:storage].to_f
    r.pet = params[:pet].to_f
    r.laundry = params[:laundry].to_f
    r.vending = params[:vending].to_f
    r.save

    e = Operating_Expense.new
    e.management_fees = params[:management_fees].to_f
    e.administrative_fees = params[:administrative_fees].to_f
    e.payroll_and_benefits = params[:payroll_and_benefits].to_f
    e.maintenance = params[:maintenance].to_f
    e.utilities = params[:utilities].to_f
    e.real_estate_taxes = params[:real_estate_taxes].to_f
    e.miscellaneous = params[:miscellaneous].to_f
    e.proforma_id = params[:proforma_id].to_f
    e.save


    redirect_to '/proformas/:id' #show page
  end


  def show
    # @p = Proforma.find(params[:id])
    @p = Proforma.all



   # @name = params[:name]
   # @address = params[:address]
   # @state = params[:state]
   # @sqft = params[:sqft].to_i
   # rent = params[:rent].to_f
   # parking = params[:parking].to_f
   # storage = params[:storage].to_f
   # pet = params[:pet].to_f
   # laundry = params[:laundry].to_f
   # vending = params[:vending].to_f
   # @total_revenue = rent+parking+storage+pet+laundry+vending

   # management_fees = params[:management_fees].to_f
   # administrative_fees = params[:administrative_fees].to_f
   # payroll = params[:payroll].to_f
   # maintenance = params[:maintenance].to_f
   # utilities = params[:utilities].to_f
   # insurance = params[:insurance].to_f
   # re_taxes = params[:re_taxes].to_f
   # miscellaneous = params[:miscellaneous].to_f
   # @total_opex = management_fees+administrative_fees+payroll+maintenance+utilities+insurance+re_taxes+miscellaneous

   # @noi = @total_revenue - @total_opex

   # rev_growth = params[:rev_growth].to_f
   # opex_growth = params[:opex_growth].to_f

   # @total_rev_year2 = @total_revenue * (1 + rev_growth)
   # @total_opex_year2 = @total_opex * (1 + opex_growth)
   # @noi_year2 = @total_rev_year2 - @total_opex_year2

   # @total_rev_year3 = @total_rev_year2 * (1 + rev_growth)
   # @total_opex_year3 = @total_opex_year2 * (1 + opex_growth)
   # @noi_year3 = @total_rev_year3 - @total_opex_year3


   # @sale_price = params[:sale_price]


   #  r = params[:discount_rate]
   #  discount_rate

   #  r = params[:discount_rate].to_f
   #  #r = 0.07
   #  p = params[:purchase_price].to_f

   #  sale = params[:sale_price].to_f


   # @npv = -p + @noi/(1+r)**1 + @noi_year2/(1+r)**2 + (@noi_year3+sale)/(1+r)**3

   # if @npv < 0
   #  puts "This is a bad investment"
   # else
   #  puts "This is a good investment"
   # end #how do i get this to render in erb?



  end

end