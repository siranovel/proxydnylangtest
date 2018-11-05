function dspArray(name, av)
    io.write(name)
    for i = 1, #av do
        io.write(" "..av[i])
    end
    print()
end
function dspHash(hv)
    for key, val in pairs(hv) do
    	print(key, val)
    	if type(val) == "table" then
    	    if type(val[1]) == "number" then
		   	    dspArray("x", val)
	   	    end
    	    if type(val[1]) == "nil" then
    	        dspHash(val)
    	    end
    	end
    end
end
--
-- パラメータ(無し)テスト
function test_paramX()
    print("test_paramX in")
    return null
end
--
-- パラメータ(文字列)テスト
function test_paramS(id, name, memo)
    print("test_paramS in")
    print(string.format("id:%s name:%s memo:%s", id, name, memo))
end
-- 
-- パラメータ(数字:int,long,float,double)テスト
function test_paramN(iv, lv, fv, dv)
    print("test_paramN in")
    print("iv:"..iv)
    print("lv:"..lv)
    print("fv:"..fv)
    print("dv:"..dv)
end
--
-- パラメータ(数字の配列:int,long,float,double)テスト
function test_paramAV(aiv, alv, afv, adv)
    print("test_paramAV in")
    dspArray("aiv:", aiv)
    dspArray("alv:", alv)
    dspArray("afv:", afv)
    dspArray("adv:", adv)
end
--
-- パラメータ(ハッシュ:数字、文字列、数字の配列)テスト
function test_paramHV(hv)
    print("test_paramHV in")
    dspHash(hv)
end
--
-- 戻り(数字:int)テスト
function test_returnIV(iv)
    print("test_returnIV in")
    print("iv:" .. iv)
    return iv * 2
end
--
-- 戻り(整数:long)テスト
function test_returnLV(lv)
    print("test_returnLV in")
    print("lv:" .. lv)
    return lv * 2
end
--
-- 戻り(実数:float)テスト
function test_returnFV(fv)
    print("test_returnFV in")
    print("fv:" .. fv)
    return fv * 2
end
--
-- 戻り(実数:double)テスト
function test_returnDV(dv)
    print("test_returnDV in")
    print("dv:" .. dv)
    return dv * 2
end
--
-- 戻り(文字列)テスト
function test_returnPV()
   print("test_returnPV in")
   return "hello lua world"
end
--
-- 戻り(数字:intの配列)テスト
function test_returnAIV()
   aiv = {10, 11, 12, 13, 14, 15}
   print("test_returnAIV in")
   return aiv
end
--
-- 戻り(数字:longの配列)テスト
function test_returnALV()
   alv = {20, 21, 22, 23, 24, 25}
   print("test_returnALV in")
   return alv
end
--
-- 戻り(実数:floatの配列)テスト
function test_returnAFV()
   afv = {30.3, 31.3, 32.3, 33.3, 34.3, 35.3}
   print("test_returnAFV in")
   return afv
end
--
-- 戻り(実数:doubleの配列)テスト
function test_returnADV()
   adv = {40.3, 41.3, 42.3, 43.3, 44.3, 45.3}
   print("test_returnADV in")
   return adv
end
--
-- 戻り(ハッシュ)テスト
function test_returnHV()
    hv = {
       ["key01"] = 100, 
       ["key02"] = 110.5,
       ["key03"] = "value03",
       ["key04"] = {10, 11},
       ["key05"] = {20.5,21.5, 22.5},
       ["key06"] = {
           ["keyX1"] = 200,
           ["keyX2"] = 210.5,
           ["keyX3"] = "valueX3"
       },
       ["key07"] = function(x)
           return x * 2
       end
    }
    print("test_returnHV in")
    return hv
end
--
-- 戻り(ハッシュの配列)テスト
function test_returnAHV()
    ahv = {
       {["keyX1"] = 100, ["keyX2"] = 110.5, ["keyX3"] = "valueX31"},
       {["keyX1"] = 200, ["keyX2"] = 120.5, ["keyX3"] = "valueX32"}
    }
    print("test_returnAHV in")
    return ahv
end
--
-- 戻り(ラムダ式:無名関数)テスト
function test_returnO()
    print("test_returnO in")
    
    return function(x)
        return x * 2
    end
end

---------------------------------------
--  HogeX
---------------------------------------
HogeX = {}

HogeX.new = function()
    local obj = {}
    
    obj.objectTest_paramX = function(self)
        print( "HogeX::objectTest_paramX in")
    end
    obj.objectTest_paramS = function(self, id, name, memo)
	    print( "HogeX::objectTest_paramS in")
	    print(string.format("id:%s name:%s memo:%s", id, name, memo))
    end
	obj.objectTest_paramN = function(self, iv, lv, fv, dv)
	    print("HogeX::objectTest_paramN in")
	    print("iv:"..iv)
	    print("lv:"..lv)
	    print("fv:"..fv)
        print("dv:"..dv)
    end
	obj.objectTest_paramAV = function(self, aiv, alv, afv, adv)
	    print("HogeX::objectTest_paramAV in")
	    dspArray("aiv", aiv)
	    dspArray("alv", alv)
	    dspArray("afv", afv)
	    dspArray("adv", adv)
    end
	obj.objectTest_paramHV = function(self, hv)
	    print("HogeX::objectTest_paramHV in")
	    dspHash(hv)
	end
	obj.objectTest_returnIV = function(self, iv)
	    print("HogeX::objectTest_returnIV in")
	    print("iv:" .. iv)
	    return iv * 2
	end
	obj.objectTest_returnLV = function(self, lv)
	    print("HogeX::objectTest_returnLV in")
	    print("lv:" .. lv)
	    return lv * 2
	end
	obj.objectTest_returnFV = function(self, fv)
	    print("HogeX::objectTest_returnFV in")
	    print("fv:" .. fv)
	    return fv * 2
	end
	obj.objectTest_returnDV = function(self, dv)
	    print("HogeX::objectTest_returnDV in")
	    print("dv:" .. dv)
	    return dv * 2
	end
	obj.objectTest_returnPV = function(self)
	   print("HogeX::objectTest_returnPV in")
	   return "hello lua world"
	end
	obj.objectTest_returnAIV = function(self)
	   aiv = {10, 11, 12, 13, 14, 15}
	   print("HogeX::objectTest_returnAIV in")
	   return aiv
	end
	obj.objectTest_returnALV = function(self)
	   alv = {20, 21, 22, 23, 24, 25}
	   print("HogeX::objectTest_returnALV in")
	   return alv
	end
	obj.objectTest_returnAFV = function(self)
	   afv = {30.3, 31.3, 32.3, 33.3, 34.3, 35.3}
	   print("HogeX::objectTest_returnAFV in")
	   return afv
	end
	obj.objectTest_returnADV = function(self)
	   adv = {40.3, 41.3, 42.3, 43.3, 44.3, 45.3}
	   print("HogeX::objectTest_returnADV in")
	   return adv
	end
	obj.objectTest_returnHV = function(self)
	    hv = {
	       ["key01"] = 100, 
	       ["key02"] = 110.5,
	       ["key03"] = "value03",
	       ["key04"] = {10, 11},
	       ["key05"] = {20.5,21.5, 22.5},
	       ["key06"] = {
	           ["keyX1"] = 200,
	           ["keyX2"] = 210.5,
	           ["keyX3"] = "valueX3"
	       }
	    }
	    print("HogeX::objectTest_returnHV in")
	    return hv
	end
	obj.objectTest_returnAHV = function(self)
	    ahv = {
	       {["keyX1"] = 100, ["keyX2"] = 110.5, ["keyX3"] = "valueX31"},
	       {["keyX1"] = 200, ["keyX2"] = 120.5, ["keyX3"] = "valueX32"}
	    }
	    print("HogeX::objectTest_returnAHV in")
	    return ahv
	end
	obj.objectTest_returnO = function(self)
	    print("objectTest_returnO in")
	    
	    return function(x)
	        return x * 2
	    end
	end

    return obj
end

HogeX.staticTest_paramX = function()
    print("HogeX::staticTest_paramX in")
end
HogeX.staticTest_paramS = function(id, name, memo)
    print( "Hoge::staticTest_paramS in")
    print(string.format("id:%s name:%s memo:%s", id, name, memo))
end
HogeX.staticTest_paramN = function(iv, lv, fv, dv)
    print("Hoge::staticTest_paramN in")
    print("iv:"..iv)
    print("lv:"..lv)
    print("fv:"..fv)
    print("dv:"..dv)
end
HogeX.staticTest_paramAV = function(aiv, alv, afv, adv)
    print("Hoge::staticTest_paramAV in")
    dspArray("aiv", aiv)
    dspArray("alv", alv)
    dspArray("afv", afv)
    dspArray("adv", adv)
end
HogeX.staticTest_paramHV = function(hv)
    print("HogeX::staticTest_paramHV in")
    dspHash(hv)
end
HogeX.staticTest_returnIV = function(iv)
    print("HogeX::staticTest_returnIV in")
    print("iv:" .. iv)
    return iv * 2
end
HogeX.staticTest_returnLV = function(lv)
    print("HogeX::staticTest_returnLV in")
    print("lv:" .. lv)
    return lv * 2
end
HogeX.staticTest_returnFV = function(fv)
    print("HogeX::staticTest_returnFV in")
    print("fv:" .. fv)
    return fv * 2
end
HogeX.staticTest_returnDV = function(dv)
    print("HogeX::staticTest_returnDV in")
    print("dv:" .. dv)
    return dv * 2
end
HogeX.staticTest_returnPV = function()
   print("HogeX::staticTest_returnPV in")
   return "hello lua world"
end
HogeX.staticTest_returnAIV = function()
   aiv = {10, 11, 12, 13, 14, 15}
   print("HogeX::staticTest_returnAIV in")
   return aiv
end
HogeX.staticTest_returnALV = function()
   alv = {20, 21, 22, 23, 24, 25}
   print("HogeX::staticTest_returnALV in")
   return alv
end
HogeX.staticTest_returnAFV = function()
   afv = {30.3, 31.3, 32.3, 33.3, 34.3, 35.3}
   print("HogeX::staticTest_returnAFV in")
   return afv
end
HogeX.staticTest_returnADV = function()
   adv = {40.3, 41.3, 42.3, 43.3, 44.3, 45.3}
   print("HogeX::staticTest_returnADV in")
   return adv
end
HogeX.staticTest_returnHV = function()
    hv = {
       ["key01"] = 100, 
       ["key02"] = 110.5,
       ["key03"] = "value03",
       ["key04"] = {10, 11},
       ["key05"] = {20.5,21.5, 22.5},
       ["key06"] = {
           ["keyX1"] = 200,
           ["keyX2"] = 210.5,
           ["keyX3"] = "valueX3"
       }
    }
    print("HogeX::staticTest_returnHV in")
    return hv
end
HogeX.staticTest_returnAHV = function()
    ahv = {
       {["keyX1"] = 100, ["keyX2"] = 110.5, ["keyX3"] = "valueX31"},
       {["keyX1"] = 200, ["keyX2"] = 120.5, ["keyX3"] = "valueX32"}
    }
    print("HogeX::staticTest_returnAHV in")
    return ahv
end
HogeX.staticTest_returnO = function()
    print("staticTest_returnO in")
    
    return function(x)
        return x * 2
    end
end
---------------------------------------
--  HogeY
---------------------------------------
HogeY = {}
HogeY.new = function(id, name, memo)
    local obj = {}
    local _id = id
    local _name = name
    local _memo = memo
	obj.showInfox = function(self, objX)
	    print("HogeY::showInfox in")
	    print(string.format("id:%s name:%s memo:%s", _id, _name, _memo))
        objX:objectTest_paramS(_id, _name, _memo)
	end
	obj.showInfoy = function(self, f, hv)
	    print("HogeY::showInfoy in")
	    print( "f(4)=" .. f(4))
	    dspHash(hv)
	end
    return obj
end

