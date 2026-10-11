.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_sk;
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

    const-string v1, "Viac ne\u017e jeden \u0161t\u00fdl dokumentu bol definovan\u00fd v rovnakom s\u00fabore."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "Vzor \'\'{0}\'\' je u\u017e v tomto \u0161t\u00fdle dokumentu definovan\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "Vzor \'\'{0}\'\' nie je v tomto \u0161t\u00fdle dokumentu definovan\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "Premenn\u00e1 \'\'{0}\'\' je viackr\u00e1t definovan\u00e1 v tom istom rozsahu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "Premenn\u00e1 alebo parameter \'\'{0}\'\' nie je definovan\u00e1."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 n\u00e1js\u0165 triedu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 n\u00e1js\u0165 extern\u00fa met\u00f3du \'\'{0}\'\' (mus\u00ed by\u0165 verejn\u00e1)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 konvertova\u0165 typ argumentu/n\u00e1vratu vo volan\u00ed met\u00f3dy \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "S\u00fabor alebo URI \'\'{0}\'\' sa nena\u0161li."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "Neplatn\u00fd URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 otvori\u0165 s\u00fabor alebo URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "O\u010dak\u00e1va sa element <xsl:stylesheet> alebo <xsl:transform>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "Predpona n\u00e1zvov\u00e9ho priestoru \'\'{0}\'\' nie je deklarovan\u00e1."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 rozl\u00ed\u0161i\u0165 volanie funkcie \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "Argument pre \'\'{0}\'\' mus\u00ed by\u0165 re\u0165azcom liter\u00e1lu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "Chyba pri anal\u00fdze v\u00fdrazu XPath \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "Ch\u00fdba po\u017eadovan\u00fd atrib\u00fat \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "Neplatn\u00fd znak \'\'{0}\'\' vo v\u00fdraze XPath."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "Neplatn\u00fd n\u00e1zov \'\'{0}\'\' pre in\u0161trukciu spracovania."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "Atrib\u00fat \'\'{0}\'\' mimo elementu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "Neleg\u00e1lny atrib\u00fat \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "Cirkul\u00e1rny import/zahrnutie. \u0160t\u00fdl dokumentu \'\'{0}\'\' je u\u017e zaveden\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "Fragmenty stromu v\u00fdsledkov nemo\u017eno triedi\u0165 (elementy <xsl:sort> s\u00fa ignorovan\u00e9). Ke\u010f vytv\u00e1rate v\u00fdsledkov\u00fd strom, mus\u00edte triedi\u0165 uzly."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "Desiatkov\u00e9 form\u00e1tovanie \'\'{0}\'\' je u\u017e definovan\u00e9."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "Verzia XSL \'\'{0}\'\' nie je podporovan\u00e1 XSLTC."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "Cirkul\u00e1rna referencia premennej/parametra v \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "Nezn\u00e1my oper\u00e1tor pre bin\u00e1rny v\u00fdraz."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "Neplatn\u00fd argument(y) pre volanie funkcie."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "Druh\u00fd argument pre funkciu dokumentu() mus\u00ed by\u0165 sada uzlov."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "V <xsl:choose> sa vy\u017eaduje najmenej jeden element <xsl:when>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "V  <xsl:choose> je povolen\u00fd len jeden element <xsl:otherwise>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise> mo\u017eno pou\u017ei\u0165 len v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when> mo\u017eno pou\u017ei\u0165 len v <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "V <xsl:choose> s\u00fa povolen\u00e9 len elementy <xsl:when> a <xsl:otherwise>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "<xsl:attribute-set> ch\u00fdba atrib\u00fat \'name\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "Neplatn\u00fd element potomka."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "Nem\u00f4\u017eete vola\u0165 element \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "Nem\u00f4\u017eete vola\u0165 atrib\u00fat \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "Textov\u00e9 \u00fadaje s\u00fa mimo elementu vrchnej \u00farovne <xsl:stylesheet>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "Analyz\u00e1tor JAXP nie je spr\u00e1vne nakonfigurovan\u00fd"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "Neodstr\u00e1nite\u013en\u00e1 intern\u00e1 chyba XSLTC: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "Nepodporovan\u00fd element XSL \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "Nerozl\u00ed\u0161en\u00e9 roz\u0161\u00edrenie XSLTC \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "Vstupn\u00fd dokument nie je \u0161t\u00fdlom dokumentu (n\u00e1zvov\u00fd priestor XSL nie je deklarovan\u00fd v kore\u0148ovom elemente)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "Nebolo mo\u017en\u00e9 n\u00e1js\u0165 cie\u013e \u0161t\u00fdlu dokumentu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "Nie je implementovan\u00e9: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "Vstupn\u00fd dokument neobsahuje \u0161t\u00fdl dokumentu XSL."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "Nebolo mo\u017en\u00e9 analyzova\u0165 element \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "Atrib\u00fat pou\u017eitia <key> mus\u00ed by\u0165 uzol, sada uzlov, re\u0165azec alebo \u010d\u00edslo."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "Verzia v\u00fdstupn\u00e9ho dokumentu XML by mala by\u0165 1.0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "Nezn\u00e1my oper\u00e1tor pre rela\u010dn\u00fd v\u00fdraz"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "Pokus o pou\u017eitie neexistuj\u00facej sady atrib\u00fatov \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 analyzova\u0165 vzor hodnoty atrib\u00fatu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "Nezn\u00e1my typ \u00fadajov v podpise pre triedu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "Nie je mo\u017en\u00e9 konvertova\u0165 typ \u00fadajov \'\'{0}\'\' na \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "Tento vzor neobsahuje platn\u00fa defin\u00edciu triedy transletu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "Tento vzor neobsahuje triedu s n\u00e1zvom \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "Nebolo mo\u017en\u00e9 zavies\u0165 triedu transletu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "Trieda transletu zaveden\u00e1, ale nie je mo\u017en\u00e9 vytvori\u0165 in\u0161tanciu transletu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "Pokus o nastavenie ErrorListener pre \'\'{0}\'\' na null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "XSLTC podporuje len StreamSource, SAXSource a DOMSource"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "Objekt zdroja odovzdan\u00fd \'\'{0}\'\' nem\u00e1 \u017eiadny obsah."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "Nebolo mo\u017en\u00e9 skompilova\u0165 \u0161t\u00fdl dokumentu"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory nerozozn\u00e1va atrib\u00fat \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult() sa mus\u00ed vola\u0165 pred startDocument()."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Transform\u00e1tor nem\u00e1 \u017eiadny zapuzdren\u00fd objekt transletu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "Pre v\u00fdsledok transform\u00e1cie nebol definovan\u00fd \u017eiadny v\u00fdstupn\u00fd handler."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "Objekt v\u00fdsledku odovzdan\u00fd \'\'{0}\'\' je neplatn\u00fd."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "Pokus o pr\u00edstup k neplatn\u00e9mu majetku transform\u00e1tora \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "Nebolo mo\u017en\u00e9 vytvori\u0165 adapt\u00e9r SAX2DOM: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "XSLTCSource.build() bol zavolan\u00fd bez nastaven\u00e9ho systemId."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "Vo\u013eba -i sa mus\u00ed pou\u017e\u00edva\u0165 s vo\u013ebou -o."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "SYNOPSIS\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\nOPTIONS\n   -o <output>    prira\u010fuje n\u00e1zov <output> generovan\u00e9mu transletu \n. \u0160tandardne sa n\u00e1zov transletu \n berie z n\u00e1zvu <stylesheet>. T\u00e1to vo\u013eba sa ignoruje pri kompilovan\u00ed viacer\u00fdch \u0161t\u00fdlov dokumentov\n\n.   -d <directory> uv\u00e1dza cie\u013eov\u00fd adres\u00e1r pre translet\n   -j <jarfile>   pakuje triedy transletov do s\u00faboru jar n\u00e1zvu \n uveden\u00e9ho ako <jarfile>\n   -p <package>   uv\u00e1dza predponu n\u00e1zvu bal\u00edku pre v\u0161etky generovan\u00e9 triedy transletu.\n\n   -n             povo\u013euje zoradenie vzorov v riadku (\u0161tandardn\u00e9 chovanie v priemere lep\u0161ie). \n\n   -x             zap\u00edna   v\u00fdstupy spr\u00e1v ladenia \n   -s             zakazuje volanie System.exit\n   -u             interpretuje<stylesheet> argumenty ako URL\n   -i             n\u00fati kompil\u00e1tor \u010d\u00edta\u0165 \u0161t\u00fdl dokumentu z stdin\n   -v             tla\u010d\u00ed verziu kompil\u00e1tora\n   -h             tla\u010d\u00ed pr\u00edkaz tohto pou\u017eitia\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "SYNOPSIS \n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n      [-x] [-s] [-n <iterations>] {-u <document_url> | <document>}\n      <class> [<param1>=<value1> ...]\n\n   pou\u017e\u00edva translet <class> na transform\u00e1ciu dokumentu XML \n   uveden\u00e9ho ako <document>. <class> transletu je bu\u010f v \n u\u017e\u00edvate\u013eovej CLASSPATH alebo vo volite\u013ene uvedenom <jarfile>.\nVO\u013dBY\n   -j <jarfile>    uv\u00e1dza s\u00fabor jar, z ktor\u00e9ho sa m\u00e1 zavies\u0165 translet\n   -x              zap\u00edna \u010fal\u0161\u00ed v\u00fdstup spr\u00e1v ladenia\n   -s              zakazuje volanie System.exit\n   -n <iterations> sp\u00fa\u0161\u0165a transform\u00e1ciu <iterations> r\u00e1z a \n                   zobrazuje inform\u00e1cie profilovania\n   -u <document_url> uv\u00e1dza vstupn\u00fd dokument XML ako URL\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort> mo\u017eno pou\u017ei\u0165 len v <xsl:for-each> alebo <xsl:apply-templates>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "V\u00fdstupn\u00e9 k\u00f3dovanie \'\'{0}\'\' nie je v tomto JVM podporovan\u00e9."

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

    const-string v1, "Nie je mo\u017en\u00e9 n\u00e1js\u0165 extern\u00fd kon\u0161truktor \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "Prv\u00fd argument pre nestatick\u00fa funkciu Java \'\'{0}\'\' nie je platnou referenciou objektu."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "Chyba pri kontrole typu v\u00fdrazu \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "Chyba pri kontrole typu v\u00fdrazu na nezn\u00e1mom mieste."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "Vo\u013eba pr\u00edkazov\u00e9ho riadka \'\'{0}\'\' je neplatn\u00e1."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "Vo\u013ebe pr\u00edkazov\u00e9ho riadka \'\'{0}\'\' ch\u00fdba po\u017eadovan\u00fd argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "UPOZORNENIE:  \'\'{0}\'\'\n       :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "UPOZORNENIE:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "KRITICK\u00c1 CHYBA:  \'\'{0}\'\'\n           :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "KRITICK\u00c1 CHYBA:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "CHYBA:  \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "CHYBA:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "Transform\u00e1cia pomocou transletu \'\'{0}\'\' "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "Transform\u00e1cia pomocou transletu \'\'{0}\'\' zo s\u00faboru jar \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "Nebolo mo\u017en\u00e9 vytvori\u0165 in\u0161tanciu triedy TransformerFactory \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "Chyby preklada\u010da:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "Upozornenia preklada\u010da:"

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
