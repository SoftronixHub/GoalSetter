class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :comment, :edit, :update, :destroy]

  # GET /goals
  # GET /goals.json
  def index
    @goals = current_user.goals
    
    @goals.each do |g|
      completed_milestone=0
      @milestones=g.milestones 
      if(@milestones.count>0)
      @milestones.each do |m|
         if(m.completed)
          completed_milestone=completed_milestone+1
        end
          

      end
      g.percentage=(completed_milestone/@milestones.count)*100
    else
     g.percentage=0
    end
      
    end

  end

  # GET /goals/1
  # GET /goals/1.json
  def show

    @note=Note.new

  end

  def comment
  
    @note = @goal.notes.new(note_params)
     
    respond_to do |format|
      if @note.save

        format.html { redirect_to @goal, notice: 'Note was successfully added.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /goals/new
  def new
    @goal = Goal.new
     
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)
       @goal.user_id=current_user.id
    
   binding.pry
  @milestones=params[:milestone_title]

    respond_to do |format|
      if @goal.save
        @milestones.each do |m|
         @goal.milestones.create(:title=>m, :completed=>false)
        end

        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:title, :description, :deadline, milestones_attributes: [:title])
    end

    def milestone_params
      params.require(:title).permit!
    end

    def note_params
      params.require(:note).permit(:comment, :attachment)
    end
end
