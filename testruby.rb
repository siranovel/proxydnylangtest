def ins_testx()
   printf "ins_testx in\n"
end
#
#パラメータ(無し)テスト
def test_paramX()
    print "test_paramX\n"
end
#
#パラメータ(文字列)テスト
def test_paramS(id, name, memo)
    print "test_paramS\n"
    printf "id:%s name:%s memo:%s\n", id, name, memo
end
#
#パラメータ(数字:int,long,float,double)テスト
def test_paramN(iv, lv, fv, dv)
   printf "test_paramN in\n"
   printf "iv:%d\n", iv
   printf "lv:%d\n", lv
   printf "fv:%f\n", fv
   printf "dv:%f\n", dv
end
#
#パラメータ(数字の配列:int,long,float,double)テスト
def test_paramAV(aiv, alv, afv, adv)
   printf "test_paramAV in\n"
   dspArray("aiv:", aiv)
   dspArray("alv:", alv)
   dspArray("afv:", afv)
   dspArray("adv:", adv)
end
def dspArray(name, av)
   printf "%s:", name  
   av.each{ |v|
       print v, " "
   }
   printf "\n"  
end
def dspHash(hv)
    for h in hv.keys
        print("key:", h, " " )
        if hv[h].kind_of?(Array) == true then
            dspArray(":", hv[h])
        elsif hv[h].kind_of?(Hash) == true then
            dspHash(hv[h])
        else
            print(hv[h], "\n")
        end
    end
end
#
#パラメータ(ハッシュ:数字、文字列、数字の配列)テスト
def test_paramHV(hv)
    puts "test_paramHV in"
    dspHash(hv)
end
#
# 戻り(数字:int)テスト
def test_returnIV(iv)
   printf "test_returnIV in\n"
   printf "iv:%d\n", iv
   return iv * 2
end
#
# 戻り(整数:long)テスト
def test_returnLV(lv)
   printf "test_returnLV in\n"
   printf "lv:%d\n", lv
   return lv * 2
end
#
# 戻り(実数:float)テスト
def test_returnFV(fv)
   printf "test_returnFV in\n"
   printf "fv:%f\n", fv
   return fv * 2
end
#
# 戻り(実数:double)テスト
def test_returnDV(dv)
   printf "test_returnDV in\n"
   printf "dv:%f\n", dv
   return dv * 2
end
#
# 戻り(文字列)テスト
def test_returnPV()
   printf "test_returnPV in\n"
   return "こんにちは"
end
#
# 戻り(数字:intの配列)テスト
def test_returnAIV()
   aiv = [10, 11, 12, 13, 14, 15]
   printf "test_returnAIV in\n"
   return aiv
end
#
# 戻り(数字:longの配列)テスト
def test_returnALV()
   alv = [20, 21, 22, 23, 24, 25]
   printf "test_returnALV in\n"
   return alv
end
#
# 戻り(実数:floatの配列)テスト
def test_returnAFV()
   afv = [30.3, 31.3, 32.3, 33.3, 34.3, 35.3]
   printf "test_returnAFV in\n"
   return afv
end
#
# 戻り(実数:doubleの配列)テスト
def test_returnADV()
   adv = [40.3, 41.3, 42.3, 43.3, 44.3, 45.3]
   printf "test_returnADV in\n"
   return adv
end
#
# 戻り(ハッシュ)テスト
def test_returnHV()
   hv = {
       "key01" => 100,
       "key02" => 110.5,
       "key03" => "value03",
       "key04" => [10, 11],
       "key05" => [20.5,21.5, 22.5 ],
       "key06" => {
           "keyX1" => 200,
           "keyX2" => 210.5,
           "keyX3" => "valueX3"
       },
       "key07" => lambda { |x|
         return x * 2
       }
   }
   printf "test_returnHV in\n"
   return hv
end
#
# 戻り(ハッシュの配列)テスト
def test_returnAHV()
    ahv = [
       {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"},
       {"keyX1" => 200, "keyX2" => 120.5, "keyX3" => "valueX32"}
    ];
   printf "test_returnAHV in\n"
   return ahv
end
#
# 戻り(ラムダ式:無名関数)テスト
def test_returnO()
    printf "test_returnO in\n"
	return lambda { |x| x * 2}
end


module HogeM
    def ins_test0x()
        printf "HogeM::ins_test0x in\n"
    end
    def moduleTest_paramS(id, name, memo)
       printf "HogeM::moduleTest_paramS in\n"
       printf "id:%s name:%s memo:%s\n", id, name, memo 
    end
    def moduleTest_paramN(iv, lv, fv, dv)
       printf "HogeM::moduleTest_paramN in\n"
       printf "iv:%d\n", iv
       printf "lv:%d\n", lv
       printf "fv:%f\n", fv
       printf "dv:%f\n", dv
    end
    def moduleTest_paramAV(aiv, alv, afv, adv)
       printf "HogeM::moduleTest_paramAV in\n"
       dspArray("aiv:", aiv)
       dspArray("alv:", alv)
       dspArray("afv:", afv)
       dspArray("adv:", adv)
    end
    def moduleTest_paramHV(hv)
        puts "HogeM::moduleTest_paramHV in"
        dspHash(hv)
    end
    def moduleTest_returnIV(iv)
        puts "HogeM::moduleTest_returnIV in"
        printf "iv:%d\n", iv
        return iv * 2
    end
    def moduleTest_returnLV(lv)
        puts "HogeM::moduleTest_returnLV in"
        printf "lv:%d\n", lv
        return lv * 2
    end
    def moduleTest_returnFV(fv)
        puts "HogeM::moduleTest_returnFV in"
        printf "fv:%f\n", fv
        return fv * 2
    end
    def moduleTest_returnDV(dv)
        puts "HogeM::moduleTest_returnDV in"
        printf "dv:%f\n", dv
        return dv * 2
    end
    def moduleTest_returnPV()
        puts "HogeM::moduleTest_returnPV in"
        return "hello ruby world"
    end
    def moduleTest_returnAIV()
       aiv = [10, 11, 12, 13, 14, 15]
        puts "HogeM::moduleTest_returnAIV in"
       return aiv
    end
    def moduleTest_returnALV()
       alv = [20, 21, 22, 23, 24, 25]
       puts "Hoge::objectTest_returnALV in"
       return alv
    end
    def moduleTest_returnAFV()
       afv = [30.3, 31.3, 32.3, 33.3, 34.3, 35.3]
       puts "HogeM::moduleTest_returnAFV in"
       return afv
    end
    def moduleTest_returnADV()
       adv = [40.3, 41.3, 42.3, 43.3, 44.3, 45.3]
       puts "HogeM::moduleTest_returnADV in"
       return adv
    end
    def moduleTest_returnHV()
        hv = {
           "key01" => 100,
           "key02" => 110.5,
           "key03" => "value03",
           "key04" => [10, 11],
           "key05" => [20.5,21.5, 22.5 ],
           "key06" => {
               "keyX1" => 200,
               "keyX2" => 210.5,
               "keyX3" => "valueX3"
           }
       }
       puts "HogeM::moduleTest_returnHV in"
       return hv
    end
    def moduleTest_returnAHV()
        ahv = [
           {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"},
           {"keyX1" => 200, "keyX2" => 120.5, "keyX3" => "valueX32"}
        ];
       puts "HogeM::moduleTest_returnAHV in"
       return ahv
    end
    
    module_function :ins_test0x
    module_function :moduleTest_paramS
    module_function :moduleTest_paramN
    module_function :moduleTest_paramAV
    module_function :moduleTest_paramHV
    module_function :moduleTest_returnIV
    module_function :moduleTest_returnLV
    module_function :moduleTest_returnFV
    module_function :moduleTest_returnDV
    module_function :moduleTest_returnPV
    module_function :moduleTest_returnAIV
    module_function :moduleTest_returnALV
    module_function :moduleTest_returnAFV
    module_function :moduleTest_returnADV
    module_function :moduleTest_returnHV
    module_function :moduleTest_returnAHV
end
#--------------------------------------#
#  HogeX
#--------------------------------------#
class HogeX
    class << self
        def staticTest_paramX()
            printf "HogeX::staticTest_paramX in\n"
        end
        public :staticTest_paramX
        
        def staticTest_paramS(id, name, memo)
            printf "Hoge::staticTest_paramS in\n"
            printf "id:%s name:%s memo:%s\n", id, name, memo 
        end
        public :staticTest_paramS
        
        def staticTest_paramN(iv, lv, fv, dv)
           printf "Hoge::staticTest_paramN in\n"
           printf "iv:%d\n", iv
           printf "lv:%d\n", lv
           printf "fv:%f\n", fv
           printf "dv:%f\n", dv
        end
        public :staticTest_paramN

        def staticTest_paramAV(aiv, alv, afv, adv)
           printf "Hoge::staticTest_paramAV in\n"
           dspArray("aiv", aiv)
           dspArray("alv", alv)
           dspArray("afv", afv)
           dspArray("adv", adv)
        end
        public :staticTest_paramAV

        def staticTest_paramHV(hv)
            puts "Hoge::staticTest_paramHV in"
            dspHash(hv)
        end
        public :staticTest_paramHV

        def staticTest_returnIV(iv)
            printf "Hoge::staticTest_returnIV in\n"
            printf "iv:%d\n", iv
            return iv * 2
        end
        public :staticTest_returnIV

        def staticTest_returnLV(lv)
            printf "Hoge::staticTest_returnLV in\n"
            printf "lv:%d\n", lv
            return lv * 2
        end
        public :staticTest_returnLV

        def staticTest_returnFV(fv)
            printf "Hoge::staticTest_returnFV in\n"
            printf "fv:%f\n", fv
            return fv * 2
        end
        public :staticTest_returnFV

        def staticTest_returnDV(dv)
            printf "Hoge::staticTest_returnDV in\n"
            printf "dv:%f\n", dv
            return dv * 2
        end
        public :staticTest_returnDV

        def staticTest_returnPV()
            printf "Hoge::test_returnPV in\n"
            return "hello ruby world"
        end
        public :staticTest_returnPV

        def staticTest_returnAIV()
           aiv = [10, 11, 12, 13, 14, 15]
           printf "Hoge::staticTest_returnAIV in\n"
           return aiv
        end
        public :staticTest_returnAIV

        def staticTest_returnALV()
           alv = [20, 21, 22, 23, 24, 25]
           printf "Hoge::staticTest_returnALV in\n"
           return alv
        end
        public :staticTest_returnALV

        def staticTest_returnAFV()
           afv = [30.3, 31.3, 32.3, 33.3, 34.3, 35.3]
           printf "Hoge::staticTestt_returnAFV in\n"
           return afv
        end
        public :staticTest_returnAFV

        def staticTest_returnADV()
           adv = [40.3, 41.3, 42.3, 43.3, 44.3, 45.3]
           printf "Hoge::staticTest_returnADV in\n"
           return adv
        end
        public :staticTest_returnADV

        def staticTest_returnHV()
            hv = {
               "key01" => 100,
               "key02" => 110.5,
               "key03" => "value03",
               "key04" => [10, 11],
               "key05" => [20.5,21.5, 22.5 ],
               "key06" => {
                   "keyX1" => 200,
                   "keyX2" => 210.5,
                   "keyX3" => "valueX3"
               },
               "key07" => lambda { |x|
                 return x * 2
               }
           }
           printf "Hoge::staticTest_returnHV in\n"
           return hv
        end
        public :staticTest_returnHV

        def staticTest_returnAHV()
            ahv = [
               {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"},
               {"keyX1" => 200, "keyX2" => 120.5, "keyX3" => "valueX32"}
            ];
           printf "Hoge::staticTest_returnAHV in\n"
           return ahv
        end
        public :staticTest_returnAHV

		def staticTest_returnO()
		    printf "Hoge::staticTest_returnO in\n"
			return lambda { |x| x * 2}
		end
        public :staticTest_returnO
    end
    def objectTest_paramX()
        printf "HogeX::objectTest_paramX in\n"
    end
    def objectTest_paramS(id, name, memo)
       printf "Hoge::objectTest_paramS in\n"
       printf "id:%s name:%s memo:%s\n", id, name, memo 
    end
    public :objectTest_paramS 

    def objectTest_paramN(iv, lv, fv, dv)
       printf "Hoge::objectTest_paramN in\n"
       printf "iv:%d\n", iv
       printf "lv:%d\n", lv
       printf "fv:%f\n", fv
       printf "dv:%f\n", dv
    end
    public :objectTest_paramN

    def objectTest_paramAV(aiv, alv, afv, adv)
       printf "Hoge::objectTest_paramAV in\n"
       dspArray("aiv", aiv)
       dspArray("alv", alv)
       dspArray("afv", afv)
       dspArray("adv", adv)
    end
    public :objectTest_paramAV

    def objectTest_paramHV(hv)
        puts "Hoge::objectTest_paramHV in"
        dspHash(hv)
    end
    public :objectTest_paramHV
    
    def objectTest_returnIV(iv)
        printf "Hoge::objectTest_returnIV in\n"
        printf "iv:%d\n", iv
        return iv * 2
    end
    public :objectTest_returnIV
    
    def objectTest_returnLV(lv)
        printf "Hoge::objectTest_returnLV in\n"
        printf "lv:%d\n", lv
        return lv * 2
    end
    public :objectTest_returnLV
    
    def objectTest_returnFV(fv)
        printf "Hoge::objectTest_returnFV in\n"
        printf "fv:%f\n", fv
        return fv * 2
    end
    public :objectTest_returnFV
    
    def objectTest_returnDV(dv)
        printf "Hoge::objectTest_returnDV in\n"
        printf "dv:%f\n", dv
        return dv * 2
    end
    public :objectTest_returnDV
    
    def objectTest_returnPV()
        printf "Hoge::objectTest_returnPV in\n"
        return "hello ruby world"
    end
    public :objectTest_returnPV
    
    def objectTest_returnAIV()
       aiv = [10, 11, 12, 13, 14, 15]
       printf "Hoge::objectTest_returnAIV in\n"
       return aiv
    end
    public :objectTest_returnAIV
    
    def objectTest_returnALV()
       alv = [20, 21, 22, 23, 24, 25]
       printf "Hoge::objectTest_returnALV in\n"
       return alv
    end
    public :objectTest_returnALV
    
    def objectTest_returnAFV()
       afv = [30.3, 31.3, 32.3, 33.3, 34.3, 35.3]
       printf "Hoge::objectTest_returnAFV in\n"
       return afv
    end
    public :objectTest_returnAFV
    
    def objectTest_returnADV()
       adv = [40.3, 41.3, 42.3, 43.3, 44.3, 45.3]
       printf "Hoge::objectTest_returnADV in\n"
       return adv
    end
    public :objectTest_returnADV
    
    def objectTest_returnHV()
        hv = {
           "key01" => 100,
           "key02" => 110.5,
           "key03" => "value03",
           "key04" => [10, 11],
           "key05" => [20.5,21.5, 22.5 ],
           "key06" => {
               "keyX1" => 200,
               "keyX2" => 210.5,
               "keyX3" => "valueX3"
           },
           "key07" => lambda { |x|
             return x * 2
           }
       }
       printf "Hoge::objectTest_returnHV in\n"
       return hv
    end
    public :objectTest_returnHV
    
    def objectTest_returnAHV()
        ahv = [
           {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"},
           {"keyX1" => 200, "keyX2" => 120.5, "keyX3" => "valueX32"}
        ];
       printf "Hoge::objectTest_returnAHV in\n"
       return ahv
    end
    public :objectTest_returnAHV
    
	def objectTest_returnO()
	    printf "Hoge::objectTest_returnO in\n"
		return lambda { |x| x * 2}
	end
    public :objectTest_returnO

end
#--------------------------------------#
#  HogeY
#--------------------------------------#
class HogeY
    def initialize(id="id", name="name", memo="memo")
        @id = id
        @name = name
        @memo = memo
    end
    def showInfox(objX)
       printf "HogeY::showInfox in\n"
       printf "id:%s name:%s memo:%s\n", @id, @name, @memo 
       objX.objectTest_paramS(@id, @name, @memo)
       HogeM::moduleTest_paramS(@id, @name, @memo)
    end
	def showInfoy(f, hv)
        printf "HogeY::showInfoy in\n"
		printf "f(4)=%d\n", f.call(4)
		test_paramHV(hv)
	end
end
