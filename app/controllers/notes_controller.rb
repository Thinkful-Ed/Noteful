class NotesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def new
    @note = Note.new
  end

  def index
    @notes = Note.all
  end

  def create
    @note = current_user.notes.new(note_params)

    if @note.save
      redirect_to @note, notice: 'Success! You have just written a new note!'
    else
      render :new
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      flash.notice = "Your note'#{@note.title}' has just been updated!"
      redirect_to @note
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    flash.notice = "Your note'#{@note.title}' has just been trashed!"
    redirect_to notes_path
  end

  private
    def note_params
      params.require(:note).permit(:title, :content)
    end

end
