class Ilovedb < ActiveRecord::Base
    # ilovedb는 comment를 가지고있다.
    has_many :comments
    # , :dependent => :destroy
end
