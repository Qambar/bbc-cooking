class ListPage < Base
    class << self
        attr_accessor  :recipe_container, :error_message
    end

    def visit
        super "?page=list"
    end
end


