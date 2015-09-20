class Base
    def initialize(session)
        @session = session
    end

    def visit(url)
        @session.visit(url)
    end
end