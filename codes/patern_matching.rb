class Test

  def initialize
    @jk = ["月ノ美兎", "樋口楓", "静香凛"]
    @rofmao = ["剣持刀也", "加賀美隼人", "不破湊", "甲斐田晴"]
    @nizi = ["ギルザレンⅢ世", "でび・でび・でびる" ]

    @units = [@jk, @rofmao, @nizi]
  end

  # このメソッドでpで表示させようとすると表示されない
  def patern_mathinc_exec
    case @units[rand(0..2)]
      in ["月ノ美兎", "樋口楓", "静香凛"]
        "JK組ですね"
      in ["剣持刀也", "加賀美隼人", "不破湊", "甲斐田晴"]
        "ROFMAOですね"
      in ["ギルザレンⅢ世", another ]
        "にじさんじかも？ #{another}"
    end
  end
end

instance = Test.new

1..10.times do
  p instance.patern_mathinc_exec
end