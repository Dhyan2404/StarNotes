.class public Lnet/sf/saxon/expr/number/NamedTimeZone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->c:Ljava/util/List;

    sget-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->a:Ljava/util/Set;

    invoke-static {}, Ljava/time/ZoneId;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "us"

    const-string v1, "America/New_York"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "America/Chicago"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "America/Denver"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "America/Anchorage"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "America/Halifax"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "Pacific/Honolulu"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Canada/Pacific"

    const-string v1, "ca"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Canada/Mountain"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Canada/Central"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Canada/Eastern"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Canada/Atlantic"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Australia/Sydney"

    const-string v1, "au"

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Australia/Darwin"

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Australia/Perth"

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Europe/Moscow"

    const-string v1, "ru"

    invoke-static {v1, v0, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Europe/Samara"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Yekaterinburg"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Novosibirsk"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Krasnoyarsk"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Irkutsk"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Chita"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Asia/Vladivostok"

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "an"

    const-string v1, "Europe/Andorra"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ae"

    const-string v1, "Asia/Abu_Dhabi"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "af"

    const-string v1, "Asia/Kabul"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "al"

    const-string v1, "Europe/Tirana"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "am"

    const-string v1, "Asia/Yerevan"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ao"

    const-string v1, "Africa/Luanda"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ar"

    const-string v1, "America/Buenos_Aires"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "as"

    const-string v1, "Pacific/Samoa"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "at"

    const-string v1, "Europe/Vienna"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aw"

    const-string v1, "America/Aruba"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "az"

    const-string v1, "Asia/Baku"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ba"

    const-string v1, "Europe/Sarajevo"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bb"

    const-string v1, "America/Barbados"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bd"

    const-string v1, "Asia/Dhaka"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "be"

    const-string v1, "Europe/Brussels"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "bf"

    const-string v1, "Africa/Ouagadougou"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bg"

    const-string v1, "Europe/Sofia"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bh"

    const-string v1, "Asia/Bahrain"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bi"

    const-string v1, "Africa/Bujumbura"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bm"

    const-string v1, "Atlantic/Bermuda"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bn"

    const-string v1, "Asia/Brunei"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bo"

    const-string v1, "America/La_Paz"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "br"

    const-string v1, "America/Sao_Paulo"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bs"

    const-string v1, "America/Nassau"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bw"

    const-string v1, "Gaborone"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "by"

    const-string v1, "Europe/Minsk"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bz"

    const-string v1, "America/Belize"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cd"

    const-string v1, "Africa/Kinshasa"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ch"

    const-string v1, "Europe/Zurich"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ci"

    const-string v1, "Africa/Abidjan"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cl"

    const-string v1, "America/Santiago"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    const-string v1, "Asia/Shanghai"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "co"

    const-string v1, "America/Bogota"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cr"

    const-string v1, "America/Costa_Rica"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cu"

    const-string v1, "America/Cuba"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cv"

    const-string v1, "Atlantic/Cape_Verde"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cy"

    const-string v1, "Asia/Nicosia"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cz"

    const-string v1, "Europe/Prague"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "de"

    const-string v1, "Europe/Berlin"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dj"

    const-string v1, "Africa/Djibouti"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dk"

    const-string v1, "Europe/Copenhagen"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "do"

    const-string v1, "America/Santo_Domingo"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dz"

    const-string v1, "Africa/Algiers"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ec"

    const-string v1, "America/Quito"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ee"

    const-string v1, "Europe/Tallinn"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "eg"

    const-string v1, "Africa/Cairo"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "er"

    const-string v1, "Africa/Asmara"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "es"

    const-string v1, "Europe/Madrid"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fi"

    const-string v1, "Europe/Helsinki"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fj"

    const-string v1, "Pacific/Fiji"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fk"

    const-string v1, "America/Stanley"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fr"

    const-string v1, "Europe/Paris"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ga"

    const-string v1, "Africa/Libreville"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gb"

    const-string v1, "Europe/London"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gd"

    const-string v3, "America/Grenada"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ge"

    const-string v3, "Asia/Tbilisi"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gh"

    const-string v3, "Africa/Accra"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gm"

    const-string v3, "Africa/Banjul"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gn"

    const-string v3, "Africa/Conakry"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gr"

    const-string v3, "Europe/Athens"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gy"

    const-string v3, "America/Guyana"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hk"

    const-string v3, "Asia/Hong_Kong"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hn"

    const-string v3, "America/Tegucigalpa"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hr"

    const-string v3, "Europe/Zagreb"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ht"

    const-string v3, "America/Port-au-Prince"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hu"

    const-string v3, "Europe/Budapest"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    const-string v3, "Asia/Jakarta"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ie"

    const-string v3, "Europe/Dublin"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "il"

    const-string v3, "Asia/Tel_Aviv"

    invoke-static {v0, v3, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "in"

    const-string v3, "Asia/Calcutta"

    invoke-static {v0, v3, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "iq"

    const-string v3, "Asia/Baghdad"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ir"

    const-string v3, "Asia/Tehran"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is"

    const-string v3, "Atlantic/Reykjavik"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "it"

    const-string v3, "Europe/Rome"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jm"

    const-string v3, "America/Jamaica"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jo"

    const-string v3, "Asia/Amman"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jp"

    const-string v3, "Asia/Tokyo"

    invoke-static {v0, v3, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ke"

    const-string v3, "Africa/Nairobi"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kg"

    const-string v3, "Asia/Bishkek"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kh"

    const-string v3, "Asia/Phnom_Penh"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kp"

    const-string v3, "Asia/Pyongyang"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kr"

    const-string v3, "Asia/Seoul"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kw"

    const-string v3, "Asia/Kuwait"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lb"

    const-string v3, "Asia/Beirut"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "li"

    const-string v3, "Europe/Liechtenstein"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lk"

    const-string v3, "Asia/Colombo"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lr"

    const-string v3, "Africa/Monrovia"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ls"

    const-string v3, "Africa/Maseru"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lt"

    const-string v3, "Europe/Vilnius"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lu"

    const-string v3, "Europe/Luxembourg"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lv"

    const-string v3, "Europe/Riga"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ly"

    const-string v3, "Africa/Tripoli"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ma"

    const-string v3, "Africa/Rabat"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mc"

    const-string v3, "Europe/Monaco"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "md"

    const-string v3, "Europe/Chisinau"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mg"

    const-string v3, "Indian/Antananarivo"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mk"

    const-string v3, "Europe/Skopje"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ml"

    const-string v3, "Africa/Bamako"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mm"

    const-string v3, "Asia/Rangoon"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mn"

    const-string v3, "Asia/Ulaanbaatar"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mo"

    const-string v3, "Asia/Macao"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mq"

    const-string v3, "America/Martinique"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mt"

    const-string v3, "Europe/Malta"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mu"

    const-string v3, "Indian/Mauritius"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mv"

    const-string v3, "Indian/Maldives"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mw"

    const-string v3, "Africa/Lilongwe"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mx"

    const-string v3, "America/Mexico_City"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "my"

    const-string v3, "Asia/Kuala_Lumpur"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "na"

    const-string v3, "Africa/Windhoek"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ne"

    const-string v3, "Africa/Niamey"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ng"

    const-string v3, "Africa/Lagos"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ni"

    const-string v3, "America/Managua"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nl"

    const-string v3, "Europe/Amsterdam"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no"

    const-string v3, "Europe/Oslo"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "np"

    const-string v3, "Asia/Kathmandu"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nz"

    const-string v3, "Pacific/Aukland"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "om"

    const-string v3, "Asia/Muscat"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pa"

    const-string v3, "America/Panama"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pe"

    const-string v3, "America/Lima"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pg"

    const-string v3, "Pacific/Port_Moresby"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ph"

    const-string v3, "Asia/Manila"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pk"

    const-string v3, "Asia/Karachi"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pl"

    const-string v3, "Europe/Warsaw"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pr"

    const-string v3, "America/Puerto_Rico"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pt"

    const-string v3, "Europe/Lisbon"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "py"

    const-string v3, "America/Asuncion"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qa"

    const-string v3, "Asia/Qatar"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ro"

    const-string v3, "Europe/Bucharest"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rs"

    const-string v3, "Europe/Belgrade"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rw"

    const-string v3, "Africa/Kigali"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sa"

    const-string v3, "Asia/Riyadh"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sd"

    const-string v3, "Africa/Khartoum"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "se"

    const-string v3, "Europe/Stockholm"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sg"

    const-string v3, "Asia/Singapore"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "si"

    const-string v3, "Europe/Ljubljana"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sk"

    const-string v3, "Europe/Bratislava"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sl"

    const-string v3, "Africa/Freetown"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "so"

    const-string v3, "Africa/Mogadishu"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sr"

    const-string v3, "America/Paramaribo"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sv"

    const-string v3, "America/El_Salvador"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sy"

    const-string v3, "Asia/Damascus"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sz"

    const-string v3, "Africa/Mbabane"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "td"

    const-string v3, "Africa/Ndjamena"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tg"

    const-string v3, "Africa/Lome"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v3, "Asia/Bangkok"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tj"

    const-string v3, "Asia/Dushanbe"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tm"

    const-string v3, "Asia/Ashgabat"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tn"

    const-string v3, "Africa/Tunis"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "to"

    const-string v3, "Pacific/Tongatapu"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tr"

    const-string v3, "Asia/Istanbul"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tw"

    const-string v3, "Asia/Taipei"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tz"

    const-string v3, "Africa/Dar_es_Salaam"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ua"

    const-string v3, "Europe/Kiev"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ug"

    const-string v3, "Africa/Kampala"

    invoke-static {v0, v3}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uk"

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "uy"

    const-string v1, "America/Montevideo"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uz"

    const-string v1, "Asia/Tashkent"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ve"

    const-string v1, "America/Caracas"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vn"

    const-string v1, "Asia/Hanoi"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "za"

    const-string v1, "Africa/Johannesburg"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zm"

    const-string v1, "Africa/Lusaka"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zw"

    const-string v1, "Africa/Harare"

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/time/ZoneId;Lnet/sf/saxon/value/DateTimeValue;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/DateTimeValue;->toJavaInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    return p0
.end method

.method public static b(Ljava/time/ZoneId;J)Z
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "UTC"

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static civilTimeOffsetInSeconds(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->c(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->a(Ljava/time/ZoneId;Lnet/sf/saxon/value/DateTimeValue;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lnet/sf/saxon/expr/number/NamedTimeZone;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/number/NamedTimeZone;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    invoke-static {p0, v0}, Lnet/sf/saxon/value/CalendarValue;->appendTimezone(ILnet/sf/saxon/str/UnicodeBuilder;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNamedTimeZone(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOlsonTimeZoneName(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/number/NamedTimeZone;->b(Ljava/time/ZoneId;J)Z

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v3, p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->a(Ljava/time/ZoneId;Lnet/sf/saxon/value/DateTimeValue;)I

    move-result v3

    mul-int/lit8 v4, v1, 0x3c

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2

    :cond_4
    invoke-static {p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZoneNameForDate(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "America/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "us"

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "uk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    const-string p1, "America/New_York"

    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    const-string p1, "Europe/London"

    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    invoke-static {p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->b(Ljava/time/ZoneId;J)Z

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result v0

    const-string v1, "IST"

    const-string v2, "GMT"

    const/16 v3, 0x14a

    const/16 v4, 0x3c

    const/16 v5, -0x12c

    const/16 v6, -0x168

    const/16 v7, -0x1a4

    const/16 v8, -0x1e0

    const/16 v9, -0x21c

    if-eqz p1, :cond_10

    if-eq v0, v9, :cond_f

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_d

    if-eq v0, v6, :cond_c

    if-eq v0, v5, :cond_b

    const/16 p1, -0xf0

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    const/16 p1, 0x78

    if-eq v0, p1, :cond_7

    if-eq v0, v3, :cond_6

    invoke-static {p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1

    :cond_7
    const-string p0, "CEST"

    return-object p0

    :cond_8
    const-string p0, "BST"

    return-object p0

    :cond_9
    return-object v2

    :cond_a
    const-string p0, "EDT"

    return-object p0

    :cond_b
    const-string p0, "CDT"

    return-object p0

    :cond_c
    const-string p0, "MDT"

    return-object p0

    :cond_d
    const-string p0, "PDT"

    return-object p0

    :cond_e
    const-string p0, "AKDT"

    return-object p0

    :cond_f
    const-string p0, "HDT"

    return-object p0

    :cond_10
    const/16 p1, -0x258

    if-eq v0, p1, :cond_19

    if-eq v0, v9, :cond_18

    if-eq v0, v8, :cond_17

    if-eq v0, v7, :cond_16

    if-eq v0, v6, :cond_15

    if-eq v0, v5, :cond_14

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    invoke-static {p0}, Lnet/sf/saxon/expr/number/NamedTimeZone;->formatTimeZoneOffset(Lnet/sf/saxon/value/DateTimeValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v1

    :cond_12
    const-string p0, "CET"

    return-object p0

    :cond_13
    return-object v2

    :cond_14
    const-string p0, "EST"

    return-object p0

    :cond_15
    const-string p0, "CST"

    return-object p0

    :cond_16
    const-string p0, "MST"

    return-object p0

    :cond_17
    const-string p0, "PST"

    return-object p0

    :cond_18
    const-string p0, "AKST"

    return-object p0

    :cond_19
    const-string p0, "HST"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xcdb -> :sswitch_2
        0xe96 -> :sswitch_1
        0xe9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static inSummerTime(Lnet/sf/saxon/value/DateTimeValue;Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/value/DateTimeValue;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lnet/sf/saxon/expr/number/NamedTimeZone;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->c(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->secondsSinceEpoch()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/expr/number/NamedTimeZone;->b(Ljava/time/ZoneId;J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
