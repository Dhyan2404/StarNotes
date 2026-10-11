.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_ca;
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

    const-string v1, "S\'ha definit m\u00e9s d\'un full d\'estils en el mateix fitxer."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "La plantilla \'\'{0}\'\' ja est\u00e0 definida en aquest full d\'\'estils."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "La plantilla \'\'{0}\'\' no est\u00e0 definida en aquest full d\'\'estils."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "La variable \'\'{0}\'\' s\'\'ha definit m\u00e9s d\'\'una vegada en el mateix \u00e0mbit."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "La variable o el par\u00e0metre \'\'{0}\'\' no s\'\'ha definit."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "No s\'\'ha trobat la classe \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "No s\'\'ha trobat el m\u00e8tode extern \'\'{0}\'\' (ha de ser public)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "No s\'\'ha pogut convertir l\'\'argument o tipus de retorn a la crida del m\u00e8tode \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "No s\'\'ha trobat el fitxer o URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "L\'\'URI \'\'{0}\'\' no \u00e9s v\u00e0lid."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "No es pot obrir el fitxer o l\'\'URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "S\'\'esperava l\'\'element <xsl:stylesheet> o <xsl:transform>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "El prefix d\'\'espai de noms \'\'{0}\'\' no s\'\'ha declarat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "No s\'\'ha pogut resoldre la crida de la funci\u00f3 \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "L\'\'argument de \'\'{0}\'\' ha de ser una cadena de literals."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "S\'\'ha produ\u00eft un error en analitzar l\'\'expressi\u00f3 XPath \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "No s\'\'ha especificat l\'\'atribut obligatori \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "L\'\'expressi\u00f3 XPath cont\u00e9 el car\u00e0cter no perm\u00e8s \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "La instrucci\u00f3 de processament t\u00e9 el nom no perm\u00e8s \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "L\'\'atribut \'\'{0}\'\' es troba fora de l\'\'element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "No es permet l\'\'atribut \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "Import/include circular. El full d\'\'estils \'\'{0}\'\' ja s\'\'ha carregat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "Els fragments de l\'arbre de resultats no es poden classificar (es passen per alt els elements <xsl:sort>). Heu de classificar els nodes quan creeu l\'arbre de resultats. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "El formatatge decimal \'\'{0}\'\' ja est\u00e0 definit."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "XSLTC no d\u00f3na suport a la versi\u00f3 XSL \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "Hi ha una refer\u00e8ncia de variable/par\u00e0metre circular a \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "L\'operador de l\'expressi\u00f3 bin\u00e0ria \u00e9s desconegut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "La crida de funci\u00f3 t\u00e9 arguments no permesos."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "El segon argument de la funci\u00f3 document() ha de ser un conjunt de nodes."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "Es necessita com a m\u00ednim un element <xsl:when> a <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "Nom\u00e9s es permet un element <xsl:otherwise> a <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise> nom\u00e9s es pot utilitzar dins de <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when> nom\u00e9s es pot utilitzar dins de <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "A <xsl:choose> nom\u00e9s es permeten els elements <xsl:when> i <xsl:otherwise>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "L\'atribut \'name\' falta a <xsl:attribute-set>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "L\'element subordinat no \u00e9s perm\u00e8s."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "No podeu cridar un element \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "No podeu cridar un atribut \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "Hi ha dades fora de l\'element de nivell superior <xsl:stylesheet>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "L\'analitzador JAXP no s\'ha configurat correctament"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "S\'\'ha produ\u00eft un error intern d\'\'XSLTC irrecuperable: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "L\'\'element d\'\'XSL \'\'{0}\'\' no t\u00e9 suport."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "No es reconeix l\'\'extensi\u00f3 d\'\'XSLTC \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "El document d\'entrada no \u00e9s un full d\'estils (l\'espai de noms XSL no s\'ha declarat en l\'element arrel)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "No s\'\'ha trobat la destinaci\u00f3 \'\'{0}\'\' del full d\'\'estils."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "No s\'\'ha implementat \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "El document d\'entrada no cont\u00e9 cap full d\'estils XSL."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "No s\'\'ha pogut analitzar l\'\'element \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "L\'atribut use de <key> ha de ser node, node-set, string o number."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "La versi\u00f3 del document XML de sortida ha de ser 1.0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "L\'operador de l\'expressi\u00f3 relacional \u00e9s desconegut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "S\'\'ha intentat utilitzar el conjunt d\'\'atributs \'\'{0}\'\' que no existeix."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "No es pot analitzar la plantilla de valors d\'\'atributs \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "El tipus de dades de la signatura de la classe \'\'{0}\'\' \u00e9s desconegut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "No es pot convertir el tipus de dades \'\'{0}\'\' en \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "Templates no cont\u00e9 cap definici\u00f3 de classe translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "Templates no cont\u00e9 cap classe amb el nom \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "No s\'\'ha pogut carregar la classe translet \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "La classe translet s\'\'ha carregat, per\u00f2 no es pot crear la inst\u00e0ncia translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "S\'\'ha intentat establir ErrorListener de \'\'{0}\'\' en un valor nul."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "XSLTC nom\u00e9s d\u00f3na suport a StreamSource, SAXSource i DOMSource."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "L\'\'objecte source donat a \'\'{0}\'\' no t\u00e9 contingut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "No s\'ha pogut compilar el full d\'estils."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory no reconeix l\'\'atribut \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult() s\'ha de cridar abans de startDocument()."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Transformer no cont\u00e9 cap objecte translet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "No s\'ha definit cap manejador de sortida per al resultat de transformaci\u00f3."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "L\'\'objecte result donat a \'\'{0}\'\' no \u00e9s v\u00e0lid."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "S\'\'ha intentat accedir a una propietat Transformer \'\'{0}\'\' no v\u00e0lida."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "No s\'\'ha pogut crear l\'\'adaptador SAX2DOM \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "S\'ha cridat XSLTCSource.build() sense que s\'hagu\u00e9s establert la identificaci\u00f3 del sistema."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "L\'opci\u00f3 -i s\'ha d\'utilitzar amb l\'opci\u00f3 -o."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "RESUM\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <sortida>]\n      [-d <directori>] [-j <fitxer_jar>] [-p <paquet>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <full_estils> |  -i }\n\nOPCIONS\n   -o <sortida>    assigna el nom <sortida> al translet\n generat. Per defecte, el nom de translet\n s\'obt\u00e9 del nom de <full_estils>. Aquesta opci\u00f3\n no es t\u00e9 en compte si es compilen diversos fulls d\'estils.\n   -d <directori> especifica un directori de destinaci\u00f3 per al translet\n   -j <fitxer_jar>   empaqueta les classes translet en un fitxer jar del nom\n                  especificat com a <fitxer_jar>\n   -p <paquet> especifica un prefix de nom de paquet per a totes les classes\n                  translet generades.\n -n habilita l\'inlining (com a mitjana, el funcionament per defecte\n \u00e9s millor).\n   -x            habilita la sortida de missatges de depuraci\u00f3 addicionals\n   -s inhabilita la crida de System.exit\n   -u             interpreta els arguments <full_estils> com URL\n -i obliga el compilador a llegir el full d\'estils des de l\'entrada est\u00e0ndard\n   -v imprimeix la versi\u00f3 del compilador\n   -h             imprimeix aquesta sent\u00e8ncia d\'\u00fas.\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "RESUM \n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <fitxer_jar>]\n      [-x] [-s] [-n <iteracions>] {-u <url_document> | <document>}\n      <classe> [<par\u00e0m1>=<valor1> ...]\n\n   utilitza la <classe> translet per transformar un document XML\n   especificat com a <document>. La <classe> translet es troba\n   o b\u00e9 a la CLASSPATH de l\'usuari o b\u00e9 al <fitxer_jar> que es pot especificar opcionalment.\nOPCIONS\n   -j <fitxer_jar>    especifica un fitxer jar des del qual es pot carregar el translet\n   -x habilita la sortida de missatges de depuraci\u00f3 addicionals\n   -s              inhabilita la crida de System.exit\n   -n <iteracions> executa la transformaci\u00f3 el nombre de vegades <iteracions> i\n               mostra informaci\u00f3 de perfil\n   -u <url_document> especifica el document d\'entrada XML com una URL\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort> nom\u00e9s es pot utilitzar amb <xsl:for-each> o <xsl:apply-templates>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "Aquesta JVM no d\u00f3na suport a la codificaci\u00f3 de sortida \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "S\'\'ha produ\u00eft un error de sintaxi a \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "No s\'\'ha trobat el constructor extern \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "El primer argument de la funci\u00f3 Java no static \'\'{0}\'\' no \u00e9s una refer\u00e8ncia d\'\'objecte v\u00e0lida."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "S\'\'ha produ\u00eft un error en comprovar el tipus de l\'\'expressi\u00f3 \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "S\'ha produ\u00eft un error en comprovar el tipus d\'expressi\u00f3 en una ubicaci\u00f3 desconeguda."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "L\'\'opci\u00f3 de l\u00ednia d\'\'ordres \'\'{0}\'\' no \u00e9s v\u00e0lida."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "A l\'\'opci\u00f3 de l\u00ednia d\'\'ordres \'\'{0}\'\' li falta un argument obligatori."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "AV\u00cdS: \'\'{0}\'\'\n       :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "AV\u00cdS: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "ERROR MOLT GREU: \'\'{0}\'\'\n           :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "ERROR MOLT GREU: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "ERROR:  \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "ERROR:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "Transformaci\u00f3 mitjan\u00e7ant translet \'\'{0}\'\' "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "Transformaci\u00f3 mitjan\u00e7ant translet \'\'{0}\'\' des del fitxer jar \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "No s\'\'ha pogut crear una inst\u00e0ncia de la classe TransformerFactory \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "Errors del compilador:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "Avisos del compilador:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const-string v0, "RUNTIME_ERROR_KEY"

    const-string v1, "Errors de translet:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
