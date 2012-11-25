include MarkdownRendering

handler = ->(template) {
  %{markdown(<<-RUBY)
#{template.source}
  RUBY}
}
ActionView::Template.register_template_handler(:md, handler)
