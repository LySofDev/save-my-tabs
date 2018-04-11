module ApplicationHelper
  def octicon(name, size: 32)
    raw(Octicons::Octicon.new(name, height: size, width: size).to_svg)
  end
end
