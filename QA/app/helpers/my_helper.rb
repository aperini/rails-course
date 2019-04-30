module MyHelper
  def bout_helpers
    puts "
	- Helpers in Rails are modules just like any other ruby module.
    - Rails does some magic to auto include helpers in your views.
    - You just declare a method in a helper and it’s available to use in the
    view without an explicit receiver.
    - The ApplicationHelper should be avoided as much as possible as it tends to
    become a dumping ground for code that doesn’t seem to belong anywhere in
    particular
    - It's strongly suggested to avoid overriding default Rails helpers or
    creating multiple helper methods with the same name even if they have their
    own isolated helper module and they work fine
    - If you want to combine methods from other helper modules, you’d have to
    include those modules in your own helper module because helpers are modules
    and do not allow inheritance
    - Don't rely on instance variables, try to keep them away from helper
    methods, they make the helper very hard to read, test and maintain
    "
  end

  # Let’s say I want to have all my pages say 'Mix & Go' in their page title but
  # for some I’d like to provide a custom title to be prepended to it, like this:
  # 'Homepage | Mix & Go'
  def page_title(title)
    title += " | " if title.present?
    title += "Mix & Go"
  end

end
