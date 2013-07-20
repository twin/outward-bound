class AboutController < ApplicationController
  before_filter :set_about_pages
  before_filter :set_title

  def index
  end

  def what
  end

  def international
  end

  def instructors
    @instructors = Instructor.decorate
  end

  def support
  end

  def safety
  end

  def locations
  end

  def partners
    @partners = Partner.decorate
  end

  private

  def sub_layout
    "about"
  end

  def set_about_pages
    @about_pages = self.class.action_methods
  end

  def set_title
    @title = t("about.#{params[:action]}.page_title")
  end
end
