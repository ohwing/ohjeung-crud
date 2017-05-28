class Comment < ActiveRecord::Base
    # comment는 ilovedb에 속해있다.
    belongs_to :ilovedbs
end
