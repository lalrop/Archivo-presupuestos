class WorksController < ApplicationController
    def create
        @budget = Budget.find(params[:budget_id])
        @work = @budget.works.create(work_params)
        redirect_to budget_path(@budget)
    end

    def destroy
        @budget = Budget.find(params[:budget_id])
        @work = @budget.works.find(params[:id])
        @work.destroy
        redirect_to budget_path(@budget)
        
    end

    private
    def work_params
        params.require(:work).permit(:trabajo,:precio, :status)
        
    end
end
