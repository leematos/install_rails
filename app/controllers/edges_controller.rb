class EdgesController < ApplicationController

  def create
    @predecessor_step = Step.find(params[:edge][:predecessor_id])
    @successor_step = Step.find(params[:edge][:successor_id])
    @edge = Edge.create!(predecessor_id: @predecessor_step.id, successor_id: @successor_step.id)
    respond_to do |format|
      format.html { redirect_to @edge }
      format.js
    end
  end

  def destroy
    @edge = Edge.find(params[:id])
    @edge.destroy
    respond_to do |format|
      format.html { redirect_to @edge }
      format.js
    end
  end
end
