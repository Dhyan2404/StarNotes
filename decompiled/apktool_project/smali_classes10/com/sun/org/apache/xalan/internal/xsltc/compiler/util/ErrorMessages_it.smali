.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMessages_it;
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

    const-string v1, "Pi\u00f9 fogli di stile definiti nello stesso file. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_REDEF_ERR"

    const-string v1, "Maschera \'\'{0}\'\' gi\u00e0 definita in questo foglio di stile. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "TEMPLATE_UNDEF_ERR"

    const-string v1, "Maschera \'\'{0}\'\' non definita in questo foglio di stile. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_REDEF_ERR"

    const-string v1, "Variabile \'\'{0}\'\' definita pi\u00f9 volte nello stesso ambito. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "VARIABLE_UNDEF_ERR"

    const-string v1, "Variabile o parametro \'\'{0}\'\' non definito. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "CLASS_NOT_FOUND_ERR"

    const-string v1, "Impossibile trovare la classe \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "METHOD_NOT_FOUND_ERR"

    const-string v1, "Impossibile trovare il metodo esterno \'\'{0}\'\' (deve essere public)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ARGUMENT_CONVERSION_ERR"

    const-string v1, "Impossibile convertire il tipo di argomento/ritorno nella chiamata nel metodo \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "FILE_NOT_FOUND_ERR"

    const-string v1, "File o URI \'\'{0}\'\' non trovato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "INVALID_URI_ERR"

    const-string v1, "URI \'\'{0}\'\' non valido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "FILE_ACCESS_ERR"

    const-string v1, "Impossibile aprire il file o l\'\'URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "MISSING_ROOT_ERR"

    const-string v1, "Era previsto l\'elemento <xsl:stylesheet> o <xsl:transform>. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_UNDEF_ERR"

    const-string v1, "Il prefisso dello spazio nome \'\'{0}\'\' non \u00e8 dichiarato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "FUNCTION_RESOLVE_ERR"

    const-string v1, "Impossibile risolvere la chiamata alla funzione \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "NEED_LITERAL_ERR"

    const-string v1, "L\'\'argomento di \'\'{0}\'\' deve essere una stringa letterale. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "XPATH_PARSER_ERR"

    const-string v1, "Errore durante l\'\'analisi dell\'\'espressione XPath \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "REQUIRED_ATTR_ERR"

    const-string v1, "Attributo \'\'{0}\'\' richiesto mancante. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHAR_ERR"

    const-string v1, "Carattere non valido \'\'{0}\'\' nell\'\'espressione XPath. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_PI_ERR"

    const-string v1, "Nome \'\'{0}\'\' non valido per l\'\'istruzione di elaborazione. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "Attributo \'\'{0}\'\' al di fuori dell\'\'elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTRIBUTE_ERR"

    const-string v1, "Attributo \'\'{0}\'\' non valido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_INCLUDE_ERR"

    const-string v1, "Import/include circolare. Foglio di lavoro \'\'{0}\'\' gi\u00e0 caricato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "RESULT_TREE_SORT_ERR"

    const-string v1, "Impossibile ordinare i frammenti della struttura ad albero dei risultati (elementi <xsl:sort> ignorati). E\' necessario ordinare i nodi quando si crea la struttura ad albero dei risultati. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "SYMBOLS_REDEF_ERR"

    const-string v1, "Formattazione decimale \'\'{0}\'\' gi\u00e0 definita. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "XSL_VERSION_ERR"

    const-string v1, "Versione XSL \'\'{0}\'\' non supportata da XSLTC."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "CIRCULAR_VARIABLE_ERR"

    const-string v1, "Riferimento variabile/parametro circolare in \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_BINARY_OP_ERR"

    const-string v1, "Operatore sconosciuto per l\'espressione binaria. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ARG_ERR"

    const-string v1, "Argomento(i) non valido(i) per la chiamata alla funzione. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "DOCUMENT_ARG_ERR"

    const-string v1, "Il secondo argomento di una funzione document() deve essere una serie di nodi. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "MISSING_WHEN_ERR"

    const-string v1, "E\' necessario almeno un elemento <xsl:when> in <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "MULTIPLE_OTHERWISE_ERR"

    const-string v1, "Solo un elemento <xsl:otherwise> consentito in <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "STRAY_OTHERWISE_ERR"

    const-string v1, "<xsl:otherwise> pu\u00f2 essere utilizzato solo all\'interno di <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "STRAY_WHEN_ERR"

    const-string v1, "<xsl:when> pu\u00f2 essere utilizzato solo all\'interno di <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "WHEN_ELEMENT_ERR"

    const-string v1, "Solo gli elementi <xsl:when> e <xsl:otherwise> sono consentiti in <xsl:choose>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "UNNAMED_ATTRIBSET_ERR"

    const-string v1, "<xsl:attribute-set> non contiene l\'attributo \'name\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CHILD_ERR"

    const-string v1, "Elemento secondario non valido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ELEM_NAME_ERR"

    const-string v1, "Impossibile assegnare il nome \'\'{0}\'\' ad un elemento "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_ATTR_NAME_ERR"

    const-string v1, "Impossibile assegnare il nome \'\'{0}\'\' ad un attributo "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_TEXT_NODE_ERR"

    const-string v1, "Dati di testo al di fuori dell\'elemento <xsl:stylesheet> di livello superiore. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "SAX_PARSER_CONFIG_ERR"

    const-string v1, "Parser JAXP non configurato correttamente "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "INTERNAL_ERR"

    const-string v1, "Errore XSLTC interno non recuperabile: \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_XSL_ERR"

    const-string v1, "Elemento XSL \'\'{0}\'\' non supportato."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_EXT_ERR"

    const-string v1, "Estensione XSLTC \'\'{0}\'\' non riconosciuta."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_URI_ERR"

    const-string v1, "Il documento di immissione non \u00e8 un foglio di stile (lo spazio nomi XSL non \u00e8 dichiarato nell\'elemento root). "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "MISSING_XSLT_TARGET_ERR"

    const-string v1, "Impossibile trovare la destinazione del foglio di stile \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "NOT_IMPLEMENTED_ERR"

    const-string v1, "Non implementato: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "NOT_STYLESHEET_ERR"

    const-string v1, "Il documento di immissione non contiene un foglio di stile XSL. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ELEMENT_PARSE_ERR"

    const-string v1, "Impossibile analizzare l\'\'elemento \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "KEY_USE_ATTR_ERR"

    const-string v1, "L\'attributo use di <key> deve essere node, node-set, string o number."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "OUTPUT_VERSION_ERR"

    const-string v1, "La versione del documento XML di emissione deve essere 1.0"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_RELAT_OP_ERR"

    const-string v1, "Operatore sconosciuto per l\'espressione relazionale "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ATTRIBSET_UNDEF_ERR"

    const-string v1, "Tentativo di utilizzare una serie di attributi \'\'{0}\'\' non esistente."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ATTR_VAL_TEMPLATE_ERR"

    const-string v1, "Impossibile analizzare la maschera del valore dell\'\'attributo \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "UNKNOWN_SIG_TYPE_ERR"

    const-string v1, "Tipo di dati sconosciuto nella firma per la classe \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "Impossibile convertire il tipo di dati \'\'{0}\'\' in \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "NO_TRANSLET_CLASS_ERR"

    const-string v1, "Questa Templates non contiene una definizione di classe translet valida. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "NO_MAIN_TRANSLET_ERR"

    const-string v1, "Questa Templates non contiene una classe con il nome \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_CLASS_ERR"

    const-string v1, "Impossibile caricare la classe translet \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "TRANSLET_OBJECT_ERR"

    const-string v1, "Classe translet caricata, ma non \u00e8 possibile creare l\'istanza translet. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ERROR_LISTENER_NULL_ERR"

    const-string v1, "Tentativo di impostazione di ErrorListener per \'\'{0}\'\' su null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_SOURCE_ERR"

    const-string v1, "Solo StreamSource, SAXSource e DOMSource sono supportati da XSLTC"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_SOURCE_ERR"

    const-string v1, "L\'\'oggetto Source passato a \'\'{0}\'\' non ha contenuto. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "JAXP_COMPILE_ERR"

    const-string v1, "Impossibile compilare il foglio di stile "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "JAXP_INVALID_ATTR_ERR"

    const-string v1, "TransformerFactory non riconosce l\'\'attributo \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "JAXP_SET_RESULT_ERR"

    const-string v1, "setResult() deve essere richiamato prima di startDocument()."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_TRANSLET_ERR"

    const-string v1, "Transformer non dispone di un oggetto translet incapsulato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_HANDLER_ERR"

    const-string v1, "Nessun programma di gestione dell\'emissione definito per il risultato della trasformazione. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p0, v1

    const-string v0, "JAXP_NO_RESULT_ERR"

    const-string v1, "Oggetto Result passato a \'\'{0}\'\' non valido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p0, v1

    const-string v0, "JAXP_UNKNOWN_PROP_ERR"

    const-string v1, "Tentativo di accesso ad una propriet\u00e0 Transformer non valida \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p0, v1

    const-string v0, "SAX2DOM_ADAPTER_ERR"

    const-string v1, "Impossibile creare l\'\'adattatore SAX2DOM: \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p0, v1

    const-string v0, "XSLTC_SOURCE_ERR"

    const-string v1, "XSLTCSource.build() richiamato senza che sia impostato un systemId (identificativo di sistema). "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p0, v1

    const-string v0, "COMPILE_STDIN_ERR"

    const-string v1, "L\'opzione -i deve essere utilizzata con l\'opzione -o. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p0, v1

    const-string v0, "COMPILE_USAGE_STR"

    const-string v1, "SINTESI\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Compile [-o <output>]\n      [-d <directory>] [-j <jarfile>] [-p <package>]\n      [-n] [-x] [-s] [-u] [-v] [-h] { <stylesheet> | -i }\n\nOPZIONI\n   -o <output>    assegna il nome <output> al translet\n generato. Per impostazione predefinita, il nome translet\n                  viene preso dal nome <stylesheet>. Questa opzione\n                  viene ignorata se vengono compilati pi\u00f9 fogli di stile.\n   -d <directory> specifica una directory di destinazione per il translet\n   -j <jarfile>   raggruppa le classi translet in un file jar del\n                  nome specificato come <jarfile>\n   -p <package>   specifica un prefisso del nome pacchetto per tutte le classi\n                  translet generate.\n   -n             abilita l\'allineamento della maschera (funzionamento predefinito migliore\n                  in media).\n   -x             attiva ulteriori emissioni dei messaggi di debug\n   -s             disabilita la chiamata a System.exit\n   -u             interpreta gli argomenti <stylesheet> come URL\n   -i             impone al programma di compilazione di leggere il foglio di stile da stdin\n   -v             stampa la versione del programma di compilazione\n   -h             stampa queste istruzioni sull\'utilizzo\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_USAGE_STR"

    const-string v1, "SINTASSI\n   java com.sun.org.apache.xalan.internal.xsltc.cmdline.Transform [-j <jarfile>]\n      [-x] [-s] [-n <iterazioni>] {-u <document_url> | <document>}\n      <classe> [<param1>=<valore1> ...]\n\n   utilizza il translet <classe> per convertire un documento XML \n   specificato come <documento>. Il translet <classe> si trova \n   nella istruzione CLASSPATH dell\'utente o nel <jarfile> eventualmente specificato.\nOPZIONI\n   -j <jarfile>    specifica un jarfile da cui caricare il translet\n   -x              attiva ulteriori emissioni dei messaggi di debug\n   -s              disabilita la chiamata a System.exit\n   -n <iterazioni> esegue la trasformazione <iterazioni> volte e\n                   visualizza informazioni relative al profilo\n   -u <document_url> specifica il documento di immissione XML come URL\n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p0, v1

    const-string v0, "STRAY_SORT_ERR"

    const-string v1, "<xsl:sort> pu\u00f2 essere utilizzato solo all\'interno di <xsl:for-each> o <xsl:apply-templates>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p0, v1

    const-string v0, "UNSUPPORTED_ENCODING"

    const-string v1, "Codifica di emissione \'\'{0}\'\' non supportata in questa JVM."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p0, v1

    const-string v0, "SYNTAX_ERR"

    const-string v1, "Errore di sintassi in \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p0, v1

    const-string v0, "CONSTRUCTOR_NOT_FOUND"

    const-string v1, "Impossibile trovare il costruttore esterno \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p0, v1

    const-string v0, "NO_JAVA_FUNCT_THIS_REF"

    const-string v1, "Il primo argomento della funzione Java non statica \'\'{0}\'\' non \u00e8 un riferimento ad un oggetto valido. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_ERR"

    const-string v1, "Errore durante la verifica del tipo di espressione \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p0, v1

    const-string v0, "TYPE_CHECK_UNK_LOC_ERR"

    const-string v1, "Errore durante la verifica del tipo di espressione in una posizione sconosciuta. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p0, v1

    const-string v0, "ILLEGAL_CMDLINE_OPTION_ERR"

    const-string v1, "Opzione della riga comandi \'\'{0}\'\' non valida. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p0, v1

    const-string v0, "CMDLINE_OPT_MISSING_ARG_ERR"

    const-string v1, "Manca un argomento obbligatorio per l\'\'opzione della riga comandi \'\'{0}\'\'. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p0, v1

    const-string v0, "WARNING_PLUS_WRAPPED_MSG"

    const-string v1, "ATTENZIONE:  \'\'{0}\'\'\n       :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p0, v1

    const-string v0, "WARNING_MSG"

    const-string v1, "ATTENZIONE:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_PLUS_WRAPPED_MSG"

    const-string v1, "ERRORE GRAVE:  \'\'{0}\'\'\n           :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p0, v1

    const-string v0, "FATAL_ERR_MSG"

    const-string v1, "ERRORE GRAVE:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p0, v1

    const-string v0, "ERROR_PLUS_WRAPPED_MSG"

    const-string v1, "ERRORE:  \'\'{0}\'\'\n     :{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p0, v1

    const-string v0, "ERROR_MSG"

    const-string v1, "ERRORE:  \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_TRANSLET_STR"

    const-string v1, "Trasformazione utilizzando il translet \'\'{0}\'\' "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p0, v1

    const-string v0, "TRANSFORM_WITH_JAR_STR"

    const-string v1, "Trasformazione utilizzando il translet \'\'{0}\'\' dal file jar \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p0, v1

    const-string v0, "COULD_NOT_CREATE_TRANS_FACT"

    const-string v1, "Impossibile creare un\'\'istanza della classe TransformerFactory \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p0, v1

    const-string v0, "COMPILER_ERROR_KEY"

    const-string v1, "Errori del programma di compilazione: "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p0, v1

    const-string v0, "COMPILER_WARNING_KEY"

    const-string v1, "Messaggi di avvertenza del programma di compilazione:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p0, v1

    const-string v0, "RUNTIME_ERROR_KEY"

    const-string v1, "Errori del translet:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p0, v1

    return-object p0
.end method
