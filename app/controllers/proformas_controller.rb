class ProformasController < ApplicationController

  def index #dispays all the proformas
    @p = Proforma.all
  end


  def new # displays form (input) page
      @proforma = Proforma.new
      @revenue = Revenue.new
      @operating_expense = OperatingExpense.new
  end

  def create # grabs info from p page and send to database via objects
    proforma = Proforma.new(params[:proforma])
    revenue = Revenue.new(params[:revenue])
    operating_expense = OperatingExpense.new(params[:operating_expense])
    proforma.save
    revenue.save
    operating_expense.save
    proforma.revenues << revenue
    proforma.operating_expenses << operating_expense

    redirect_to proforma #show page
  end


  def show # displays proforma (output) page
    @p = Proforma.find(params[:id])
    @r = @p.revenues # array
    @base_rev = @p.revenues.first
    @e = @p.operating_expenses
    @base_opex = @p.operating_expenses.first

    # @total_revenue = @r.rent + @r.parking + @r.storage + @r.pet + @r.laundry + @r.vending
    @total_revenue = 0
    @r.each do |revenue|
      if revenue.rent == nil
      else
      @total_revenue += (revenue.rent + revenue.parking + revenue.storage + revenue.pet + revenue.laundry + revenue.vending)
      end
    end


    # @total_opex = management_fees + administrative_fees + payroll + maintenance + utilities + insurance + re_taxes + miscellaneous
    @total_opex = 0
    @e.each do |opex|
      if opex.management_fees == nil
      else
      @total_opex += (opex.management_fees + opex.administrative_fees + opex.payroll_and_benefits + opex.maintenance + opex.utilities + opex.insurance + opex.real_estate_taxes + opex.miscellaneous)
      end
    end

    @noi = @total_revenue - @total_opex


    @total_rev_year2 = @total_revenue * (1 + @p.rev_growth)
    @total_opex_year2 = @total_opex * (1 + @p.opex_growth)
    @noi_year2 = @total_rev_year2 - @total_opex_year2

    @total_rev_year3 = @total_rev_year2 * (1 + @p.rev_growth)
    @total_opex_year3 = @total_opex_year2 * (1 + @p.opex_growth)
    @noi_year3 = @total_rev_year3 - @total_opex_year3

    @total_rev_year4 = @total_rev_year3 * (1 + @p.rev_growth)
    @total_opex_year4 = @total_opex_year3 * (1 + @p.opex_growth)
    @noi_year4 = @total_rev_year4 - @total_opex_year4

    @total_rev_year5 = @total_rev_year4 * (1 + @p.rev_growth)
    @total_opex_year5 = @total_opex_year4 * (1 + @p.opex_growth)
    @noi_year5 = @total_rev_year5 - @total_opex_year5

    @total_rev_year6 = @total_rev_year5 * (1 + @p.rev_growth)
    @total_opex_year6 = @total_opex_year5 * (1 + @p.opex_growth)
    @noi_year6 = @total_rev_year6 - @total_opex_year6

    @total_rev_year7 = @total_rev_year6 * (1 + @p.rev_growth)
    @total_opex_year7 = @total_opex_year6 * (1 + @p.opex_growth)
    @noi_year7 = @total_rev_year7 - @total_opex_year7

    @total_rev_year8 = @total_rev_year7 * (1 + @p.rev_growth)
    @total_opex_year8 = @total_opex_year7 * (1 + @p.opex_growth)
    @noi_year8 = @total_rev_year8 - @total_opex_year8

    @total_rev_year9 = @total_rev_year8 * (1 + @p.rev_growth)
    @total_opex_year9 = @total_opex_year8 * (1 + @p.opex_growth)
    @noi_year9 = @total_rev_year9 - @total_opex_year9

    @total_rev_year10 = @total_rev_year9 * (1 + @p.rev_growth)
    @total_opex_year10 = @total_opex_year9 * (1 + @p.opex_growth)
    @noi_year10 = @total_rev_year10 - @total_opex_year10







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