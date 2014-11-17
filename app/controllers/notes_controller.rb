class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def index
    notes = Note.all
  end
  
end
