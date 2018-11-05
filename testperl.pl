#
# testperl.pl
# 
use strict;
sub test_paramX {
    print "test_paramX in", "\n";
}
#
#パラメータ(文字列)テスト
sub test_paramS {
    my ($id, $name, $memo) = @_;

    print 'test_paramS in ', $id, ':', $name, ':', $memo, "\n";
}
#
#パラメータ(数字:int,long,float,double)テスト
sub test_paramN {
    my ($iv, $lv, $fv, $dv) = @_;
    print 'test_paramN in ';
    print 'iv:', $iv, ' ';
    print 'lv:', $lv, ' ';
    print 'fv:', $fv, ' ';
    print 'dv:', $dv, ' ';
    print "\n";
}
#
#パラメータ(数字の配列:int,long,float,double)テスト
sub test_paramAV {
    my ($aiv, $alv, $afv, $adv) = @_;
    print 'test_paramAV in ', "\n";
    &dspArray($aiv);
    &dspArray($alv);
    &dspArray($afv);
    &dspArray($adv);
}
sub dspArray {
    my ($apv) = @_;
    foreach my $ap (@$apv) {
        print $ap, " ";
    }
    print "\n";
}
#
#パラメータ(ハッシュ:数字、文字列、数字の配列)テスト
sub test_paramHV {
    my ($hv) = @_;
    print 'test_paramHV in ', "\n";
    foreach my $h (keys %$hv) {
        print $h, "\t", $$hv{$h}, "\n";
        if (ref($hv->{$h}) eq "ARRAY") {
            &dspArray($hv->{$h});
        }
        if (ref($hv->{$h}) eq "HASH") {
            &dspHash($hv->{$h});
        }
    }
}
sub dspHash {
    my ($hv) = @_;
    foreach my $h (keys %$hv) {
        print $h, "\t", $$hv{$h}, "\n";
        if (ref($hv->{$h}) eq "ARRAY") {
            &dspArray($hv->{$h});
        }
    }
    print "\n";
}
#
# 戻り(数字:int)テスト
sub test_returnIV {
    my ($iv) = @_;
    print 'test_returnIV in ', "\n";
    print 'iv:', $iv, "\n";
    return $iv * 2;
}
#
# 戻り(整数:long)テスト
sub test_returnLV {
    my ($lv) = @_;
    print 'test_returnLV in ', "\n";
    print 'lv:', $lv, "\n";
    return $lv * 2;
}
#
# 戻り(実数:float)テスト
sub test_returnFV {
    my ($fv) = @_;
    print 'test_returnFV in ', "\n";
    print 'fv:', $fv, "\n";
    return $fv * 2;
}
#
# 戻り(実数:double)テスト
sub test_returnDV {
    my ($dv) = @_;
    print 'test_returnDV in ', "\n";
    print 'dv:', $dv, "\n";
    return $dv * 2;
}
#
# 戻り(文字列)テスト
sub test_returnPV {
    print 'test_returnPV in ', "\n";
    return "こんにちは";
}
#
# 戻り(数字:intの配列)テスト
sub test_returnAIV {
    my @aiv = (10, 11, 12, 13, 14, 15);
    print 'test_returnAIV in ', "\n";
    return \@aiv;
}
#
# 戻り(数字:longの配列)テスト
sub test_returnALV {
    my @alv = (20, 21, 22, 23, 24, 25);
    print 'test_returnALV in ', "\n";
    return \@alv;
}
#
# 戻り(実数:floatの配列)テスト
sub test_returnAFV {
    my @afv = (30.1, 31.1, 32.1, 33.1, 34.1, 35.1);
    print 'test_returnAFV in ', "\n";
    return \@afv;
}
#
# 戻り(実数:doubleの配列)テスト
sub test_returnADV {
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    print 'test_returnADV in ', "\n";
    return \@adv;
}
#
# 戻り(ハッシュ)テスト
sub test_returnHV {
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    my @aiv = (10, 11, 12, 13, 14, 15);
    my %hv1 = (
        "keyX1" => 100,
        "keyX2" => 110.5,
        "keyX3" => "valueX3",
    );
    my %hv2 = (
        "key01" => 100,
        "key02" => 110.5,
        "key03" => "value03",
        "key04" => \@aiv,
        "key05" => \@adv,
        "key06" => \%hv1,
        "key07" => sub {
		    my $arg = shift;
		    
		    return $arg * 2;
        }
    );
    print 'test_returnHV in ', "\n";
    return \%hv2;
}
#
# 戻り(ハッシュの配列)テスト
sub test_returnAHV {
    my $ahv = [
        {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"}
        ,{"keyX1" => 200, "keyX2" => 210.5, "keyX3" => "valueX32"}
        ,{"keyX1" => 300, "keyX2" => 310.5, "keyX3" => "valueX33"}
    ];
    print 'test_returnAHV in ', "\n";
    return $ahv;
}
#
# 戻り(ラムダ式:無名関数)テスト
sub test_returnO {
    print 'test_returnO in ', "\n";
    
    return sub {
	    my $arg = shift;
	    
	    return $arg * 2;
    }
};

#--------------------------------------#
#  HogeX
#--------------------------------------#
package HogeX;
use strict;
sub new {
    my ($class) = @_;
    my $self = {};

    bless($self, $class);
    return $self;
}
# ---- スタティック テスト ---
sub staticTest_paramX {
    print "staticTest_paramX in", "\n";
}

#
# パラメータ(文字列)テスト
sub staticTest_paramS {
    my ($id, $name, $memo) = @_;

    print 'staticTest_paramS in ', $id, ':', $name, ':', $memo, "\n";
}
#
# パラメータ(数字:int,long,float,double)テスト
sub staticTest_paramN {
    my ($iv, $lv, $fv, $dv) = @_;
    print 'staticTest_paramN in ', "\n";
    print 'iv:', $iv, "\n";
    print 'lv:', $lv, "\n";
    print 'fv:', $fv, "\n";
    print 'dv:', $dv, "\n";
}
#
#パラメータ(数字の配列:int,long,float,double)テスト
sub staticTest_paramAV {
    my ($aiv, $alv, $afv, $adv) = @_;
    print 'staticTest_paramAV in ', "\n";
    &main::dspArray($aiv);
    &main::dspArray($alv);
    &main::dspArray($afv);
    &main::dspArray($adv);
}
#
#パラメータ(ハッシュ:数字、文字列、数字の配列)テスト
sub staticTest_paramHV {
    my ($hv) = @_;
    print 'staticTest_paramHV in ', "\n";
    foreach my $h (keys %$hv) {
        print $h, "\t", $$hv{$h}, "\n";
        if (ref($hv->{$h}) eq "ARRAY") {
            &main::dspArray($hv->{$h});
        }
        if (ref($hv->{$h}) eq "HASH") {
            &main::dspHash($hv->{$h});
        }
    }
}
#
# 戻り(数字:int)テスト
sub staticTest_returnIV {
    my ($iv) = @_;
    print 'staticTest_returnIV in ', "\n";
    print 'iv:', $iv, "\n";
    return $iv * 2;
}
#
# 戻り(整数:long)テスト
sub staticTest_returnLV {
    my ($lv) = @_;
    print 'staticTest_returnLV in ', "\n";
    print 'lv:', $lv, "\n";
    return $lv * 2;
}
#
# 戻り(実数:float)テスト
sub staticTest_returnFV {
    my ($fv) = @_;
    print 'staticTest_returnFV in ', "\n";
    print 'fv:', $fv, "\n";
    return $fv * 2;
}
#
# 戻り(実数:double)テスト
sub staticTest_returnDV {
    my ($dv) = @_;
    print 'staticTest_returnDV in ', "\n";
    print 'dv:', $dv, "\n";
    return $dv * 2;
}
#
# 戻り(文字列)テスト
sub staticTest_returnPV {
    print 'staticTest_returnPV in ', "\n";
    return "Hello perl world";
}
#
# 戻り(数字:intの配列)テスト
sub staticTest_returnAIV {
    my @aiv = (10, 11, 12, 13, 14, 15);
    print 'staticTest_returnAIV in ', "\n";
    return \@aiv;
}
#
# 戻り(数字:longの配列)テスト
sub staticTest_returnALV {
    my @alv = (20, 21, 22, 23, 24, 25);
    print 'staticTest_returnALV in ', "\n";
    return \@alv;
}
#
# 戻り(実数:floatの配列)テスト
sub staticTest_returnAFV {
    my @afv = (30.1, 31.1, 32.1, 33.1, 34.1, 35.1);
    print 'staticTest_returnAFV in ', "\n";
    return \@afv;
}
#
# 戻り(実数:doubleの配列)テスト
sub staticTest_returnADV {
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    print 'staticTest_returnADV in ', "\n";
    return \@adv;
}
#
# 戻り(ハッシュ)テスト
sub staticTest_returnHV {
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    my @aiv = (10, 11, 12, 13, 14, 15);
    my %hv1 = (
        "keyX1" => 100,
        "keyX2" => 110.5,
        "keyX3" => "valueX3",
    );
    my %hv2 = (
        "key01" => 100,
        "key02" => 110.5,
        "key03" => "value03",
        "key04" => \@aiv,
        "key05" => \@adv,
        "key06" => \%hv1
    );
    print 'staticTest_returnHV in ', "\n";
    return \%hv2;
}
#
# 戻り(ハッシュの配列)テスト
sub staticTest_returnAHV {
    my $ahv = [
        {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"}
        ,{"keyX1" => 200, "keyX2" => 210.5, "keyX3" => "valueX32"}
        ,{"keyX1" => 300, "keyX2" => 310.5, "keyX3" => "valueX33"}
    ];
    print 'staticTest_returnAHV in ', "\n";
    return $ahv;
}
#
# 戻り(ラムダ式:無名関数)テスト
sub staticTest_returnO {
    print 'staticTest_returnO in ', "\n";
    
    return sub {
	    my $arg = shift;
	    
	    return $arg * 2;
    }
}

# ---- オブジェクト テスト ---
#
sub objectTest_paramX {
    my ($self) = @_;
    print "objectTest_paramX in", "\n";
}

#
#パラメータ(文字列)テスト
sub objectTest_paramS {
    my ($self, $id, $name, $memo) = @_;

    print 'objectTest_paramS in ', $id, ':', $name, ':', $memo, "\n";
}
#
#パラメータ(数字:int,long,float,double)テスト
sub objectTest_paramN {
    my ($self, $iv, $lv, $fv, $dv) = @_;
    print 'objectTest_paramN in ', "\n";
    print 'iv:', $iv, "\n";
    print 'lv:', $lv, "\n";
    print 'fv:', $fv, "\n";
    print 'dv:', $dv, "\n";
}
#
#パラメータ(数字の配列:int,long,float,double)テスト
sub objectTest_paramAV {
    my ($self, $aiv, $alv, $afv, $adv) = @_;
    print 'objectTest_paramAV in ', "\n";
    &main::dspArray($aiv);
    &main::dspArray($alv);
    &main::dspArray($afv);
    &main::dspArray($adv);
}
#
#パラメータ(ハッシュ)テスト
sub objectTest_paramHV {
    my ($self, $hv) = @_;
    print 'objectTest_paramHV in ', "\n";
    foreach my $h (keys %$hv) {
        print $h, "\t", $hv->{$h}, "\n";
        if (ref($hv->{$h}) eq "ARRAY") {
            &main::dspArray($hv->{$h});
        }
        if (ref($hv->{$h}) eq "HASH") {
            &main::dspHash($hv->{$h});
        }
    }
}
#
# 戻り(数字:int)テスト
sub objectTest_returnIV {
    my ($self,$iv) = @_;
    print 'objectTest_returnIV in ', "\n";
    print 'iv:', $iv, "\n";
    return $iv * 2;
}
#
# 戻り(整数:long)テスト
sub objectTest_returnLV {
    my ($self,$lv) = @_;
    print 'objectTest_returnLV in ', "\n";
    print 'lv:', $lv, "\n";
    return $lv * 2;
}
#
# 戻り(実数:float)テスト
sub objectTest_returnFV {
    my ($self,$fv) = @_;
    print 'objectTest_returnFV in ', "\n";
    print 'fv:', $fv, "\n";
    return $fv * 2;
}
#
# 戻り(実数:double)テスト
sub objectTest_returnDV {
    my ($self, $dv) = @_;
    print 'objectTest_returnDV in ', "\n";
    print 'dv:', $dv, "\n";
    return $dv * 2;
}
#
# 戻り(文字列)テスト
sub objectTest_returnPV {
    my ($self) = @_;
    print 'objectTest_returnPV in ', "\n";
    return "Hello perl world";
}
#
# 戻り(数字:intの配列)テスト
sub objectTest_returnAIV {
    my ($self) = @_;
    my @aiv = (10, 11, 12, 13, 14, 15);
    print 'objectTest_returnAIV in ', "\n";
    return \@aiv;
}
#
# 戻り(数字:longの配列)テスト
sub objectTest_returnALV {
    my ($self) = @_;
    my @alv = (20, 21, 22, 23, 24, 25);
    print 'objectTest_returnALV in ', "\n";
    return \@alv;
}
#
# 戻り(実数:floatの配列)テスト
sub objectTest_returnAFV {
    my ($self) = @_;
    my @afv = (30.1, 31.1, 32.1, 33.1, 34.1, 35.1);
    print 'objectTest_returnAFV in ', "\n";
    return \@afv;
}
#
# 戻り(実数:doubleの配列)テスト
sub objectTest_returnADV {
    my ($self) = @_;
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    print 'objectTest_returnADV in ', "\n";
    return \@adv;
}
#
# 戻り(ハッシュ)テスト
sub objectTest_returnHV {
    my ($self) = @_;
    my @adv = (40.1, 41.1, 42.1, 43.1, 44.1, 45.1);
    my @aiv = (10, 11, 12, 13, 14, 15);
    my %hv1 = (
        "keyX1" => 100,
        "keyX2" => 110.5,
        "keyX3" => "valueX3",
    );
    my %hv2 = (
        "key01" => 100,
        "key02" => 110.5,
        "key03" => "value03",
        "key04" => \@aiv,
        "key05" => \@adv,
        "key06" => \%hv1
    );
    print 'objectTest_returnHV in ', "\n";
    return \%hv2;
}

#
# 戻り(ハッシュの配列)テスト
sub objectTest_returnAHV {
    my ($self) = @_;
    my $ahv = [
        {"keyX1" => 100, "keyX2" => 110.5, "keyX3" => "valueX31"},
       {"keyX1" => 200, "keyX2" => 210.5, "keyX3" => "valueX32"}
    ];
    print 'objectTest_returnAHV in ', "\n";
    return $ahv;
}
#
# 戻り(ラムダ式:無名関数)テスト
sub objectTest_returnO {
    print 'objectTest_returnO in ', "\n";
    
    return sub {
	    my $arg = shift;
	    
	    return $arg * 2;
    }
}

#--------------------------------------#
#  HogeY
#--------------------------------------#
package HogeY;
use strict;
sub new {
    my ($class, $id, $name, $memo) = @_;
    my $self = {};
    $self->{"id"} = $id;
    $self->{"name"} = $name;
    $self->{"memo"} = $memo;
    print 'new ', $id, ':', $name, ':', $memo, "\n";
    bless($self, $class);
    return $self;
}

sub showInfox {
    my ($self, $objX) = @_;

    $self->{"id"}   = "id" if $self->{"id"} eq "";
    $self->{"name"} = "id" if $self->{"name"} eq "";
    $self->{"memo"} = "id" if $self->{"memo"} eq "";
    print "HogeY::showInfox in:";
    print $self->{"id"}, "\t", $self->{"name"}, "\t", $self->{"memo"}, "\n";
    $objX->objectTest_paramS($self->{"id"}, $self->{"name"}, $self->{"memo"});
}
sub showInfoy {
    my ($self, $obj, $objHV) = @_;

    print "HogeY::showInfoy in:","\n";
	print 'f(4)=', $obj->(4), "\n";
	&main::dspHash($objHV);
}
