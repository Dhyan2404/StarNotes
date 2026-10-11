.class public Lcom/sun/org/apache/xml/internal/serializer/utils/SerializerMessages_cs;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 2

    const/16 p0, 0x1c

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const-string v1, "T\u0159\u00edda serializace \'\'{0}\'\' neimplementuje org.xml.sax.ContentHandler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ER_RESOURCE_COULD_NOT_FIND"

    const-string v1, "Nelze naj\u00edt zdroj [ {0} ].\n {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "ER_RESOURCE_COULD_NOT_LOAD"

    const-string v1, "Nelze zav\u00e9st zdroj [ {0} ]: {1} \n {2} \n {3}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "ER_BUFFER_SIZE_LESSTHAN_ZERO"

    const-string v1, "Velikost vyrovn\u00e1vac\u00ed pam\u011bti <=0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v1, "Byla zji\u0161t\u011bna neplatn\u00e1 n\u00e1hrada UTF-16: {0} ?"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "ER_OIERROR"

    const-string v1, "Chyba vstupu/v\u00fdstupu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    const-string v1, "Nelze p\u0159idat atribut {0} po uzlech potomk\u016f ani p\u0159ed t\u00edm, ne\u017e je vytvo\u0159en prvek. Atribut bude ignorov\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ER_NAMESPACE_PREFIX"

    const-string v1, "Obor n\u00e1zv\u016f pro p\u0159edponu \'\'{0}\'\' nebyl deklarov\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "ER_STRAY_NAMESPACE"

    const-string v1, "Deklarace oboru n\u00e1zv\u016f \'\'{0}\'\'=\'\'{1}\'\' je vn\u011b prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_LOAD_RESOURCE"

    const-string v1, "Nelze zav\u00e9st \'\'{0}\'\' (zkontrolujte prom\u011bnnou CLASSPATH), proto se pou\u017e\u00edvaj\u00ed pouze v\u00fdchoz\u00ed hodnoty"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const-string v1, "Nelze na\u010d\u00edst soubor vlastnost\u00ed \'\'{0}\'\' pro v\u00fdstupn\u00ed metodu \'\'{1}\'\' (zkontrolujte prom\u011bnnou CLASSPATH)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Neplatn\u00e9 \u010d\u00edslo portu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "M\u00e1-li hostitel hodnotu null, nelze nastavit port."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "Adresa hostitele m\u00e1 nespr\u00e1vn\u00fd form\u00e1t."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Sch\u00e9ma nevyhovuje."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Nelze nastavit sch\u00e9ma \u0159et\u011bzce s hodnotou null."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "Cesta obsahuje neplatnou escape sekvenci"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "Cesta obsahuje neplatn\u00fd znak: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment obsahuje neplatn\u00fd znak."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "M\u00e1-li cesta hodnotu null, nelze nastavit fragment."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment lze nastavit jen u generick\u00e9ho URI."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "V URI nebylo nalezeno \u017e\u00e1dn\u00e9 sch\u00e9ma: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "URI nelze inicializovat s pr\u00e1zdn\u00fdmi parametry."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment nelze ur\u010dit z\u00e1rove\u0148 v cest\u011b i ve fragmentu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "V \u0159et\u011bzci cesty a dotazu nelze zadat \u0159et\u011bzec dotazu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Nen\u00ed-li ur\u010den hostitel, nelze zadat port."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Nen\u00ed-li ur\u010den hostitel, nelze zadat \u00fadaje o u\u017eivateli."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Je vy\u017eadov\u00e1no sch\u00e9ma!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    return-object p0
.end method
