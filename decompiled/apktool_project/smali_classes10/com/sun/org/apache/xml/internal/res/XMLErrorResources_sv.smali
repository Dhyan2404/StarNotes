.class public Lcom/sun/org/apache/xml/internal/res/XMLErrorResources_sv;
.super Lcom/sun/org/apache/xml/internal/res/XMLErrorResources;
.source "SourceFile"


# static fields
.field public static final MAX_CODE:I = 0x3d

.field public static final MAX_MESSAGES:I = 0x3e

.field public static final MAX_OTHERS:I = 0x4

.field public static final MAX_WARNING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/res/XMLErrorResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 2

    const/16 p0, 0x42

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ER0000"

    const-string v1, "{0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ER_FUNCTION_NOT_SUPPORTED"

    const-string v1, "Funktion inte underst\u00f6dd:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "ER_CANNOT_OVERWRITE_CAUSE"

    const-string v1, "Kan inte skriva \u00f6ver orsak"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "ER_NO_DEFAULT_IMPL"

    const-string v1, "Standardimplementering saknas i:"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ER_CHUNKEDINTARRAY_NOT_SUPPORTED"

    const-string v1, "ChunkedIntArray({0}) underst\u00f6ds f\u00f6r n\u00e4rvarande inte"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "ER_OFFSET_BIGGER_THAN_SLOT"

    const-string v1, "Offset st\u00f6rre \u00e4n fack"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "ER_COROUTINE_NOT_AVAIL"

    const-string v1, "Sidorutin inte tillg\u00e4nglig, id={0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ER_COROUTINE_CO_EXIT"

    const-string v1, "CoroutineManager mottog co_exit()-f\u00f6rfr\u00e5gan"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "ER_COJOINROUTINESET_FAILED"

    const-string v1, "co_joinCoroutineSet() misslyckades"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "ER_COROUTINE_PARAM"

    const-string v1, "Sidorutin fick parameterfel ({0})"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "ER_PARSER_DOTERMINATE_ANSWERS"

    const-string v1, "\nOV\u00c4NTAT: Parser doTerminate-svar {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "ER_NO_PARSE_CALL_WHILE_PARSING"

    const-string v1, "parse f\u00e5r inte anropas medan tolkning sker"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const-string v1, "Fel: typad upprepare f\u00f6r axel {0} inte implementerad"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const-string v1, "Fel: upprepare f\u00f6r axel {0} inte implementerad"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "ER_ITERATOR_CLONE_NOT_SUPPORTED"

    const-string v1, "Uppreparklon underst\u00f6ds inte"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "ER_UNKNOWN_AXIS_TYPE"

    const-string v1, "Ok\u00e4nd axeltraverstyp: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "ER_AXIS_NOT_SUPPORTED"

    const-string v1, "Axeltravers underst\u00f6ds inte: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ER_NO_DTMIDS_AVAIL"

    const-string v1, "Inga fler DTM-IDs \u00e4r tillg\u00e4ngliga"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ER_NOT_SUPPORTED"

    const-string v1, "Underst\u00f6ds inte: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "ER_NODE_NON_NULL"

    const-string v1, "Nod m\u00e5ste vara icke-null f\u00f6r getDTMHandleFromNode"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_RESOLVE_NODE"

    const-string v1, "Kunde inte l\u00f6sa nod till ett handtag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "ER_STARTPARSE_WHILE_PARSING"

    const-string v1, "startParse f\u00e5r inte anropas medan tolkning sker"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "ER_STARTPARSE_NEEDS_SAXPARSER"

    const-string v1, "startParse beh\u00f6ver en SAXParser som \u00e4r icke-null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "ER_COULD_NOT_INIT_PARSER"

    const-string v1, "kunde inte initialisera tolk med"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "ER_EXCEPTION_CREATING_POOL"

    const-string v1, "undantag skapar ny instans f\u00f6r pool"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "V\u00e4g inneh\u00e5ller ogiltig flyktsekvens"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Schema kr\u00e4vs!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Schema saknas i URI: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "ER_NO_SCHEME_INURI"

    const-string v1, "Schema saknas i URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "V\u00e4g inneh\u00e5ller ogiltigt tecken: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Kan inte s\u00e4tta schema fr\u00e5n null-str\u00e4ng"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Schemat \u00e4r inte likformigt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "V\u00e4rd \u00e4r inte en v\u00e4lformulerad adress"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Port kan inte s\u00e4ttas n\u00e4r v\u00e4rd \u00e4r null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Ogiltigt portnummer"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment kan bara s\u00e4ttas f\u00f6r en allm\u00e4n URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Fragment kan inte s\u00e4ttas n\u00e4r v\u00e4g \u00e4r null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment inneh\u00e5ller ogiltigt tecken"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ER_PARSER_IN_USE"

    const-string v1, "Tolk anv\u00e4nds redan"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "ER_CANNOT_CHANGE_WHILE_PARSING"

    const-string v1, "Kan inte \u00e4ndra {0} {1} medan tolkning sker"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "ER_SELF_CAUSATION_NOT_PERMITTED"

    const-string v1, "Sj\u00e4lvorsakande inte till\u00e5ten"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Userinfo f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Port f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "F\u00f6rfr\u00e5gan-str\u00e4ng kan inte anges i v\u00e4g och f\u00f6rfr\u00e5gan-str\u00e4ng"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p0, v1

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment kan inte anges i b\u00e5de v\u00e4gen och fragmentet"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p0, v1

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Kan inte initialisera URI med tomma parametrar"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p0, v1

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const-string v1, "Metod \u00e4nnu inte underst\u00f6dd "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p0, v1

    const-string v0, "ER_INCRSAXSRCFILTER_NOT_RESTARTABLE"

    const-string v1, "IncrementalSAXSource_Filter kan f\u00f6r n\u00e4rvarande inte startas om"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p0, v1

    const-string v0, "ER_XMLRDR_NOT_BEFORE_STARTPARSE"

    const-string v1, "XMLReader inte innan startParse-beg\u00e4ran"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p0, v1

    const-string v0, "ER_AXIS_TRAVERSER_NOT_SUPPORTED"

    const-string v1, "Det g\u00e5r inte att v\u00e4nda axeln: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p0, v1

    const-string v0, "ER_ERRORHANDLER_CREATED_WITH_NULL_PRINTWRITER"

    const-string v1, "ListingErrorHandler skapad med null PrintWriter!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p0, v1

    const-string v0, "ER_SYSTEMID_UNKNOWN"

    const-string v1, "SystemId ok\u00e4nt"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p0, v1

    const-string v0, "ER_LOCATION_UNKNOWN"

    const-string v1, "Platsen f\u00f6r felet \u00e4r ok\u00e4nd"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x34

    aput-object v0, p0, v1

    const-string v0, "ER_PREFIX_MUST_RESOLVE"

    const-string v1, "Prefix must resolve to a namespace: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x35

    aput-object v0, p0, v1

    const-string v0, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const-string v1, "createDocument() underst\u00f6ds inte av XPathContext!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x36

    aput-object v0, p0, v1

    const-string v0, "ER_CHILD_HAS_NO_OWNER_DOCUMENT"

    const-string v1, "Attributbarn saknar \u00e4gardokument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x37

    aput-object v0, p0, v1

    const-string v0, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const-string v1, "Attributbarn saknar \u00e4gardokumentelement!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x38

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    const-string v1, "Varning: kan inte skriva ut text innan dokumentelement!  Ignorerar..."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x39

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    const-string v1, "Kan inte ha mer \u00e4n en rot p\u00e5 en DOM!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p0, v1

    const-string v0, "ER_ARG_LOCALNAME_NULL"

    const-string v1, "Argument \'localName\' \u00e4r null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p0, v1

    const-string v0, "ER_ARG_LOCALNAME_INVALID"

    const-string v1, "Localname i QNAME b\u00f6r vara ett giltigt NCName"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p0, v1

    const-string v0, "ER_ARG_PREFIX_INVALID"

    const-string v1, "Prefixet i QNAME b\u00f6r vara ett giltigt NCName"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p0, v1

    const-string v0, "BAD_CODE"

    const-string v1, "Parameter till createMessage ligger utanf\u00f6r till\u00e5tet intervall"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p0, v1

    const-string v0, "FORMAT_FAILED"

    const-string v1, "Undantag utl\u00f6st vid messageFormat-anrop"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p0, v1

    const-string v0, "line"

    const-string v1, "Rad #"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p0, v1

    const-string v0, "column"

    const-string v1, "Kolumn #"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p0, v1

    return-object p0
.end method
