class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(note_params)

    @note.save
    redirect to @note
  end

  private
    def note_params
      params.require(:note).permit(:title, :content)
    end
  
end
