#coding: utf-8
def test_paramX():
    print( "test_paramX in" )
    
#
def test_paramS(id, name, memo):
    print( "test_paramS in" )
    print( "id:" , id, ", name:", name, ", memo:",  memo )

#
def test_paramN(iv, lv, fv, dv):
    print( "test_paramN in" )
    print( "iv:", iv )
    print( "lv:", lv )
    print( "fv:", fv )
    print( "dv:", dv )

#
def test_paramAV(aiv, alv, afv, adv):
    print( "test_paramAV in" )
    __dspArray( "aiv:", aiv )
    __dspArray( "alv:", alv )
    __dspArray( "afv:", afv )
    __dspArray( "adv:", adv )

def __dspArray(name, av):
    print( name, av )
    
def _HogeX__dspArray(name, av):
    print( name, av )

#
def test_paramHV(hv):
    print( "test_paramHV in" )
    for h in (hv):
        print( "key:", h, " value:", hv[h] )

#
def test_returnIV(iv):
    print( "test_returnIV in" )
    print( 'iv:', iv )
    return iv * 2

#
def test_returnLV(lv):
    print( "test_returnLV in" )
    print( 'lv:', lv )
    return lv * 2

#
def test_returnFV(fv):
    print( "test_returnFV in" )
    print( 'fv:', fv )
    return fv * 2
    
#
def test_returnDV(dv):
    print( "test_returnDV in" )
    print( 'dv:', dv )
    return dv * 2

#
def test_returnPV():
    print( "test_returnPV in" )
    return u'こんにちは。'

#
def test_returnAIV():
    aiv = [10, 11, 12, 13, 14]
    print( "test_returnAIV in" )
    return aiv

#
def test_returnALV():
    alv = [20L, 21L, 22L, 23L, 24L]
    print( "test_returnALV in" )
    return alv

#
def test_returnAFV():
    afv = [30.2, 31.2, 32.2, 33.2, 34.2]
    print( "test_returnAFV in" )
    return afv

#
def test_returnADV():
    adv = [40.2, 41.2, 42.2, 43.2, 44.2]
    print( "test_returnADV in" )
    return adv

#
def test_returnHV():
    print ("test_returnHV in")
    aiv = [10, 11, 12, 13, 14]
    alv = [20L, 21L, 22L, 23L, 24L]
    adv = [40.2, 41.2, 42.2, 43.2, 44.2]
    hv1 = {"keyX1": 11, 
          "keyX2":21L, 
          "keyX3": 31.3, 
          "keyX4": "valueX4"
    }
    hv2 = {"key01": 10, 
          "key02":20L, 
          "key03": 30.3, 
          "key04": "value04",
          "key05": aiv,
          "key06": alv,
          "key07": adv,
          "key08": hv1,
          "key09": lambda a : a * 2
    }
    return hv2

#
def test_returnAHV():
    print ("test_returnAHV in")
    ahv = [
        {"keyX1": 100, "keyX2": 110.5, "keyX3": "valueX31"},
        {"keyX1": 200, "keyX2": 210.5, "keyX3": "valueX32"}
    ];
    return ahv;
#
def test_returnO():
    print ("test_returnO in")
    return lambda a : a * 2

#--------------------------------------#
#  HogeX
#--------------------------------------#
class HogeX(object):
        
    @classmethod
    def classTest_paramS(cls, id, name, memo):
        print( "classTest_paramS:", id, ",", name, ",",  memo )
        return
        
    @staticmethod
    def staticTest_paramX():
        print( "staticTest_paramX in" )
        return

    @staticmethod
    def staticTest_paramS(id, name, memo):
        print( "staticTest_paramS:", id, ",", name, ",",  memo )
        return

    @staticmethod
    def staticTest_paramN(iv, lv, fv, dv):
        print ("staticTest_paramN in")
        print ("iv:", iv)
        print ("lv:", lv)
        print ("fv:", fv)
        print ("dv:", dv)

    @staticmethod
    def staticTest_paramAV(aiv, alv, afv, adv):
        print ("staticTest_paramAV in")
        __dspArray("aiv:", aiv)
        __dspArray("alv:", alv)
        __dspArray("afv:", afv)
        __dspArray("adv:", adv)
        
    @staticmethod
    def staticTest_paramHV(hv):
        print ("staticTest_paramHV in")
        for h in (hv):
            print( "key:", h, " value:", hv[h] )
    @staticmethod
    def staticTest_returnIV(iv):
        print( "staticTest_returnIV in" )
        print( 'iv:', iv )
        return iv * 2
    @staticmethod
    def staticTest_returnLV(lv):
        print ("staticTest_returnLV in")
        print ('lv:', lv)
        return lv * 2

    @staticmethod
    def staticTest_returnFV(fv):
        print ("staticTest_returnFV in")
        print ('fv:', fv)
        return fv * 2

    @staticmethod
    def staticTest_returnDV(dv):
        print ("staticTest_returnDV in")
        print ('dv:', dv)
        return dv * 2
        
    @staticmethod
    def staticTest_returnPV():
        print ("staticTest_returnPV in")
        return "hello python"
        
    @staticmethod
    def staticTest_returnAIV():
        aiv = [10, 11, 12, 13, 14]
        print ("staticTest_returnAIV in")
        return aiv
        
    @staticmethod
    def staticTest_returnALV():
        alv = [20, 21, 22, 23, 24]
        print ("staticTest_returnALV in")
        return alv
        
    @staticmethod
    def staticTest_returnAFV():
        afv = [30.2, 31.2, 32.2, 33.2, 34.2]
        print ("staticTest_returnAFV in")
        return afv
        
    @staticmethod
    def staticTest_returnADV():
        adv = [40.2, 41.2, 42.2, 43.2, 44.2]
        print ("staticTest_returnADV in")
        return adv
        
    @staticmethod
    def staticTest_returnHV():
        print ("staticTest_returnHV in")
        aiv = [10, 11, 12, 13, 14]
        alv = [20L, 21L, 22L, 23L, 24L]
        adv = [40.2, 41.2, 42.2, 43.2, 44.2]
        hv1 = {"keyX1": 11, 
              "keyX2":21L, 
              "keyX3": 31.3, 
              "keyX4": "valueX4"
        }
        hv2 = {"key01": 10, 
              "key02":20L, 
              "key03": 30.3, 
              "key04": "value04",
              "key05": aiv,
              "key06": alv,
              "key07": adv,
              "key07": hv1
        }
        return hv2
        
    @staticmethod
    def staticTest_returnAHV():
        print ("staticTest_returnAHV in")
        ahv = [
            {"keyX1": 100, "keyX2": 110.5, "keyX3": "valueX31"},
            {"keyX1": 200, "keyX2": 210.5, "keyX3": "valueX32"}
        ];
        return ahv;

    @staticmethod
    def staticTest_returnO():
        print ("staticTest in")
        return lambda a : a * 2
        
    def objectTest_paramX(self):
        print ("objectTest_paramX")
        return

    def objectTest_paramS(self, id, name, memo):
        print ("objectTest_paramS: %s, %s, %s" %(id, name, memo))
        return
        
    def objectTest_paramN(self, iv, lv, fv, dv):
        print ("objectTest_paramN in")
        print ("iv:", iv)
        print ("lv:", lv)
        print ("fv:", fv)
        print ("dv:", dv)
    def objectTest_paramAV(self, aiv, alv, afv, adv):
        print ("objectTest_paramAV in")
        __dspArray("aiv:", aiv)
        __dspArray("alv:", alv)
        __dspArray("afv:", afv)
        __dspArray("adv:", adv)
        
    def objectTest_paramHV(self, hv):
        print ("objectTest_paramHV in")
        for h in (hv):
            print ("key:", h, " value:", hv[h])

    def objectTest_returnIV(self, iv):
        print ("objectTest_returnIV in")
        print ('iv:', iv)
        return iv * 2

    def objectTest_returnLV(self, lv):
        print ("objectTest_returnLV in")
        print ('lv:', lv)
        return lv * 2

    def objectTest_returnFV(self, fv):
        print ("objectTest_returnFV in")
        print ('fv:', fv)
        return fv * 2

    def objectTest_returnDV(self, dv):
        print ("objectTest_returnDV in")
        print ('dv:', dv)
        return dv * 2
        
    def objectTest_returnPV(self):
        print ("objectTest_returnPV in")
        return "hello python"
        
    def objectTest_returnAIV(self):
        aiv = [10, 11, 12, 13, 14]
        print ("objectTest_returnAIV in")
        return aiv
        
    def objectTest_returnALV(self):
        alv = [20, 21, 22, 23, 24]
        print ("objectTest_returnALV in")
        return alv
        
    def objectTest_returnAFV(self):
        afv = [30.2, 31.2, 32.2, 33.2, 34.2]
        print ("objectTest_returnAFV in")
        return afv
        
    def objectTest_returnADV(self):
        adv = [40.2, 41.2, 42.2, 43.2, 44.2]
        print ("objectTest_returnADV in")
        return adv
        
    def objectTest_returnHV(self):
        print ("objectTest_returnHV in")
        aiv = [10, 11, 12, 13, 14]
        alv = [20L, 21L, 22L, 23L, 24L]
        adv = [40.2, 41.2, 42.2, 43.2, 44.2]
        hv1 = {"keyX1": 11, 
              "keyX2":21L, 
              "keyX3": 31.3, 
              "keyX4": "valueX4"
        }
        hv2 = {"key01": 10, 
              "key02":20L, 
              "key03": 30.3, 
              "key04": "value04",
              "key05": aiv,
              "key06": alv,
              "key07": adv,
              "key07": hv1
        }
        return hv2
        
    def objectTest_returnAHV(self):
        print ("objectTest_returnAHV in")
        ahv = [
            {"keyX1": 100, "keyX2": 110.5, "keyX3": "valueX31"},
            {"keyX1": 200, "keyX2": 210.5, "keyX3": "valueX32"}
        ];
        return ahv;
        
    def objectTest_returnO(self):
        print ("objectTest_returnO in")
        return lambda a : a * 2
#--------------------------------------#
#  HogeY
#--------------------------------------#
class HogeY:
    def __init__(self, id = "id", name = "name", memo = "memo"):
        print ('HogeY.__init__')
        self.id = id
        self.name = name
        self.memo = memo
        
    def showInfox(self, obj):
        print( 'HogeY.showInfox')
        print( '%s %s %s' %(self.id, self.name, self.memo))
        obj.objectTest_paramS(self.id, self.name, self.memo)
        obj.classTest_paramS(self.id, self.name, self.memo)
        
    def showInfoy(self, f, hv):
        print( 'HogeY.showInfoy')
        print( 'f(4)=',  f(4))
        test_paramHV(hv)
