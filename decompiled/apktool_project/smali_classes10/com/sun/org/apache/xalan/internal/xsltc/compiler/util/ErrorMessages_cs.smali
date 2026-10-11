.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_cs;
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

    const/16 p0, 0x5f

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "MULTIPLE_STYLESHEET_ERR"

    const-string v1, "V\u00edce ne\u017e jedna p\u0159edloha stylu je definov\u00e1na ve stejn\u00e9m souboru."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "\u0160ablona \'\'{0}\'\' je ji\u017e v t\u00e9to p\u0159edloze stylu definov\u00e1na."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "\u0160ablona \'\'{0}\'\' nen\u00ed v t\u00e9to p\u0159edloze stylu definov\u00e1na."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "Prom\u011bnn\u00e1 \'\'{0}\'\' je n\u011bkolikan\u00e1sobn\u011b definov\u00e1na ve stejn\u00e9m oboru."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "Prom\u011bnn\u00e1 nebo parametr \'\'{0}\'\' nejsou definov\u00e1ny."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "Nelze naj\u00edt t\u0159\u00eddu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "Nelze naj\u00edt extern\u00ed metodu \'\'{0}\'\' (mus\u00ed b\u00fdt ve\u0159ejn\u00e1)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "Nelze p\u0159ev\u00e9st argument/n\u00e1vratov\u00fd typ ve vol\u00e1n\u00ed metody \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "Soubor nebo URI \'\'{0}\'\' nebyl nalezen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "Neplatn\u00e9 URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "Nelze otev\u0159\u00edt soubor nebo URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "Byl o\u010dek\u00e1v\u00e1n prvek <xsl:stylesheet> nebo <xsl:transform>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "P\u0159edpona oboru n\u00e1zv\u016f \'\'{0}\'\' nen\u00ed deklarov\u00e1na."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "Nelze vy\u0159e\u0161it vol\u00e1n\u00ed funkce \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "Argument pro \'\'{0}\'\' mus\u00ed b\u00fdt \u0159et\u011bzcem liter\u00e1lu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "Chyba p\u0159i anal\u00fdze v\u00fdrazu XPath \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "Po\u017eadovan\u00fd atribut \'\'{0}\'\' chyb\u00ed."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "Neplatn\u00fd znak \'\'{0}\'\' ve v\u00fdrazu XPath."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "Neplatn\u00fd n\u00e1zev \'\'{0}\'\' pro zpracov\u00e1n\u00ed instrukce."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "Atribut \'\'{0}\'\' je vn\u011b prvku."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "Neplatn\u00fd atribut \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "Cyklick\u00fd import/zahrnut\u00ed. P\u0159edloha stylu \'\'{0}\'\' je ji\u017e zavedena."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "Fragmenty stromu v\u00fdsledk\u016f nemohou b\u00fdt \u0159azeny (prvky <xsl:sort> se ignoruj\u00ed). P\u0159i vytv\u00e1\u0159en\u00ed stromu v\u00fdsledk\u016f mus\u00edte se\u0159adit uzly."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "Desetinn\u00e9 form\u00e1tov\u00e1n\u00ed \'\'{0}\'\' je ji\u017e definov\u00e1no."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "Verze XSL \'\'{0}\'\' nen\u00ed produktem XSLTC podporov\u00e1na."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "Cyklick\u00fd odkaz na prom\u011bnnou/parametr v \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "Nezn\u00e1m\u00fd oper\u00e1tor pro bin\u00e1rn\u00ed v\u00fdraz."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "Neplatn\u00fd argument pro vol\u00e1n\u00ed funkce."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "Druh\u00fd argument pro funkci document() mus\u00ed b\u00fdt node-set."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "Alespo\u0148 jeden prvek <xsl:when> se vy\u017eaduje v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "Jen jeden prvek <xsl:otherwise> je povolen v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "Prvek <xsl:otherwise> m\u016f\u017ee b\u00fdt pou\u017eit jen v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "Prvek <xsl:when> m\u016f\u017ee b\u00fdt pou\u017eit jen v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "Pouze prvky <xsl:when> a <xsl:otherwise> jsou povoleny v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "V prvku <xsl:attribute-set> chyb\u00ed atribut \'name\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "Neplatn\u00fd prvek potomka."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "Nelze volat prvek \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "Nelze volat atribut \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "Textov\u00e1 data jsou vn\u011b prvku nejvy\u0161\u0161\u00ed \u00farovn\u011b <xsl:stylesheet>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "Analyz\u00e1tor JAXP je nespr\u00e1vn\u011b konfigurov\u00e1n."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "Neopraviteln\u00e1 chyba XSLTC-internal: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "Nepodporovan\u00fd prvek XSL \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "Nerozpoznan\u00e1 p\u0159\u00edpona XSLTC \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "Vstupn\u00ed dokument nen\u00ed p\u0159edloha stylu (obor n\u00e1zv\u016f XSL nen\u00ed deklarov\u00e1n v ko\u0159enov\u00e9m elementu)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "Nelze naj\u00edt c\u00edlovou p\u0159edlohu se stylem \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "Neimplementov\u00e1no: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "Vstupn\u00ed dokument neobsahuje p\u0159edlohu stylu XSL."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "Nelze analyzovat prvek \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "Atribut use prom\u011bnn\u00e9 <key> mus\u00ed b\u00fdt typu node, node-set, string nebo number."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "V\u00fdstupn\u00ed verze dokumentu XML by m\u011bla b\u00fdt 1.0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "Nezn\u00e1m\u00fd oper\u00e1tor pro rela\u010dn\u00ed v\u00fdraz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "Pokus pou\u017e\u00edt neexistuj\u00edc\u00ed sadu atribut\u016f \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "Nelze analyzovat \u0161ablonu hodnoty atributu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "Nezn\u00e1m\u00fd datov\u00fd typ prom\u011bnn\u00e9 signature pro t\u0159\u00eddu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "Nelze p\u0159ev\u00e9st datov\u00fd typ \'\'{0}\'\' na \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "Tato \u0161ablona neobsahuje platnou definici t\u0159\u00eddy translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "Tato \u0161ablona neobsahuje t\u0159\u00eddu se jm\u00e9nem \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "Nelze zav\u00e9st t\u0159\u00eddu translet \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "T\u0159\u00edda translet byla zavedena, av\u0161ak nelze vytvo\u0159it instanci translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "Pokus nastavit objekt ErrorListener pro \'\'{0}\'\' na hodnotu null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "Pouze prom\u011bnn\u00e9 StreamSource, SAXSource a DOMSource jsou podporov\u00e1ny produktem XSLTC"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "Zdrojov\u00fd objekt p\u0159edan\u00fd \'\'{0}\'\' nem\u00e1 \u017e\u00e1dn\u00fd obsah."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "Nelze kompilovat p\u0159edlohu se stylem"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "T\u0159\u00edda TransformerFactory nerozpoznala atribut \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "Metoda setResult() mus\u00ed b\u00fdt vol\u00e1na p\u0159ed metodou startDocument()."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Objekt Transformer nem\u00e1 \u017e\u00e1dn\u00fd zapouzd\u0159en\u00fd objekt translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "Neexistuje \u017e\u00e1dn\u00fd definovan\u00fd v\u00fdstupn\u00ed obslu\u017en\u00fd program pro v\u00fdsledek transformace."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "V\u00fdsledn\u00fd objekt p\u0159edan\u00fd \'\'{0}\'\' je neplatn\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "Pokus o p\u0159\u00edstup k neplatn\u00e9 vlastnosti objektu Transformer: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "Nelze vytvo\u0159it adapt\u00e9r SAX2DOM: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "Byla vol\u00e1na metoda XSLTCSource.build(), ani\u017e by byla nastavena hodnota systemId."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "Volba -i mus\u00ed b\u00fdt pou\u017eita s volbou -o."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "SYNOPSIS\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\nVOLBY\n   -o <output>    p\u0159i\u0159azuje n\u00e1zev <output> generovan\u00e9mu\n                  transletu. Standardn\u011b je n\u00e1zev transletu\n                  p\u0159evzat z n\u00e1zvu <stylesheet>. Tato volba\n                   se ignoruje, pokud se kompiluj\u00ed n\u00e1sobn\u00e9 p\u0159edlohy styl\u016f.\n   -d <directory> ur\u010duje v\u00fdchoz\u00ed adres\u00e1\u0159 pro translet\n   -j <jarfile>   zabal\u00ed t\u0159\u00eddu transletu do souboru jar\n     pojmenovan\u00e9ho jako <jarfile>\n   -p <package>   ur\u010duje p\u0159edponu n\u00e1zvu bal\u00ed\u010dku pro v\u0161echny generovan\u00e9 \n t\u0159\u00eddy transletu.\n   -n             povoluje zarovn\u00e1n\u00ed \u0161ablony (v\u00fdchoz\u00ed chov\u00e1n\u00ed je v pr\u016fm\u011bru lep\u0161\u00ed\n                  .\n   -x             zapne dal\u0161\u00ed v\u00fdstup zpr\u00e1vy lad\u011bn\u00ed\n   -s             zak\u00e1\u017ee vol\u00e1n\u00ed System.exit\n   -u             interpretuje <stylesheet> argumenty jako URL\n   -i             vynut\u00ed kompil\u00e1tor \u010d\u00edst p\u0159edlohu styl\u016f ze stdin\n   -v             tiskne verzi kompil\u00e1toru \n   -h             tiskne v\u00fdpis tohoto pou\u017eit\u00ed \n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "SYNOPSIS \n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n      [-x] [-s] [-n <iterations>] {-u <document_url> | <document>}\n      <class> [<param1>=<value1> ...]\n\n   pou\u017eije translet <class> k transformaci dokumentu XML \n ur\u010den\u00e9ho jako <document>. Translet <class> je bu\u010f v\n   v u\u017eivatelsk\u00e9 cest\u011b CLASSPATH nebo ve voliteln\u011b ur\u010den\u00e9m souboru <jarfile>.\nVOLBY\n     -j <jarfile>    ur\u010duje soubor jarfile, ze kter\u00e9ho se zavede translet\n   -x      p\u0159evede dal\u0161\u00ed v\u00fdstup zpr\u00e1vy lad\u011bn\u00ed\n   -s              vypne vol\u00e1n\u00ed System.exit\n   -n <iterations> spust\u00ed transformaci <iterations> kr\u00e1t a\n                   zobraz\u00ed informaci  o profilu\n   -u <document_url> ur\u010d\u00ed vstupn\u00ed dokument XML jako URL\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "Prvek <xsl:sort> m\u016f\u017ee b\u00fdt pou\u017eit jen v <xsl:for-each> nebo <xsl:apply-templates>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "V\u00fdstupn\u00ed k\u00f3dov\u00e1n\u00ed \'\'{0}\'\' nen\u00ed v tomto prost\u0159ed\u00ed JVM podporov\u00e1no."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "Chyba syntaxe v \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "Nelze naj\u00edt vn\u011bj\u0161\u00ed konstruktor \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "Prvn\u00ed argument nestatick\u00e9 funkce Java \'\'{0}\'\' nen\u00ed platn\u00fdm odkazem na objekt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "Chyba p\u0159i kontrole typu v\u00fdrazu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "Chyba p\u0159i kontrole typu v\u00fdrazu na nezn\u00e1m\u00e9m m\u00edst\u011b."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "Volba p\u0159\u00edkazov\u00e9ho \u0159\u00e1dku \'\'{0}\'\' nen\u00ed platn\u00e1."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "Volb\u011b p\u0159\u00edkazov\u00e9ho \u0159\u00e1dku \'\'{0}\'\' chyb\u00ed po\u017eadovan\u00fd argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "VAROV\u00c1N\u00cd: \'\'{0}\'\'\n        :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "VAROV\u00c1N\u00cd: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "Z\u00c1VA\u017dN\u00c1 CHYBA: \'\'{0}\'\'\n             :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "Z\u00c1VA\u017dN\u00c1 CHYBA: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "CHYBA: \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "CHYBA: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "Transformace pou\u017eit\u00edm transletu \'\'{0}\'\' "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "Transformace pou\u017eit\u00edm transletu \'\'{0}\'\' ze souboru jar \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "Nelze vytvo\u0159it instanci t\u0159\u00eddy TransformerFactory \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "Chyby kompil\u00e1toru:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "Varov\u00e1n\u00ed kompil\u00e1toru:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const-string v0, "RUNTIME_ERROR_KEY"

    const-string v1, "Chyby transletu:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
