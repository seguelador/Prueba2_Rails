class WorksController < ApplicationController
  def inicio
    @works = Work.all
  end
end
