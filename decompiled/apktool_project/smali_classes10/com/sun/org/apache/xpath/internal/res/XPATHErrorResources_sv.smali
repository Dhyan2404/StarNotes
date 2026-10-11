.class public Lcom/sun/org/apache/xpath/internal/res/XPATHErrorResources_sv;
.super Lcom/sun/org/apache/xpath/internal/res/XPATHErrorResources;
.source "SourceFile"


# static fields
.field public static final BAD_CODE:Ljava/lang/String; = "D\u00c5LIG_KOD"

.field public static final ERROR_HEADER:Ljava/lang/String; = "Fel: "

.field public static final ERROR_RESOURCES:Ljava/lang/String; = "com.sun.org.apache.xpath.internal.res.XPATHErrorResources"

.field public static final ERROR_STRING:Ljava/lang/String; = "//fel"

.field public static final FORMAT_FAILDE:Ljava/lang/String; = "FORMATTERING_MISSLYCKADES"

.field public static final MAX_CODE:I = 0x6c

.field public static final MAX_MESSAGES:I = 0x78

.field public static final MAX_OTHERS:I = 0x14

.field public static final MAX_WARNING:I = 0xb

.field public static final QUERY_HEADER:Ljava/lang/String; = "M\u00d6NSTER "

.field public static final WARNING_HEADER:Ljava/lang/String; = "Varning: "

.field public static final XML_HEADER:Ljava/lang/String; = "XML "

.field public static final XSL_HEADER:Ljava/lang/String; = "XSL "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/res/XPATHErrorResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 5

    const/16 p0, 0x8e

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "ERROR0000"

    const-string v1, "{0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "ER_CURRENT_NOT_ALLOWED_IN_MATCH"

    const-string v1, "Funktionen current() \u00e4r inte till\u00e5ten i ett matchningsm\u00f6nster!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "ER_CURRENT_TAKES_NO_ARGS"

    const-string v1, "Funktionen current() tar inte emot argument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "ER_DOCUMENT_REPLACED"

    const-string v1, "Implementeringen av funktionen document() har ersatts av com.sun.org.apache.xalan.internal.xslt.FuncDocument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "ER_CONTEXT_HAS_NO_OWNERDOC"

    const-string v1, "Kontext saknar \u00e4gardokument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "ER_LOCALNAME_HAS_TOO_MANY_ARGS"

    const-string v1, "local-name() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "ER_NAMESPACEURI_HAS_TOO_MANY_ARGS"

    const-string v1, "namespace-uri() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ER_NORMALIZESPACE_HAS_TOO_MANY_ARGS"

    const-string v1, "normalize-space() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "ER_NUMBER_HAS_TOO_MANY_ARGS"

    const-string v1, "number() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "ER_NAME_HAS_TOO_MANY_ARGS"

    const-string v1, "name() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "ER_STRING_HAS_TOO_MANY_ARGS"

    const-string v1, "string() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "ER_STRINGLENGTH_HAS_TOO_MANY_ARGS"

    const-string v1, "string.length() har f\u00f6r m\u00e5nga argument."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "ER_TRANSLATE_TAKES_3_ARGS"

    const-string v1, "Funktionen translate() tar emot tre argument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "ER_UNPARSEDENTITYURI_TAKES_1_ARG"

    const-string v1, "Funktionen unparsed-entity-uri borde ta emot ett argument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "ER_NAMESPACEAXIS_NOT_IMPLEMENTED"

    const-string v1, "Namespace-axel inte implementerad \u00e4n!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "ER_UNKNOWN_AXIS"

    const-string v1, "ok\u00e4nd axel: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "ER_UNKNOWN_MATCH_OPERATION"

    const-string v1, "ok\u00e4nd matchningshandling!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    const-string v0, "ER_INCORRECT_ARG_LENGTH"

    const-string v1, "Nodtests argumentl\u00e4ngd i processing-instruction() \u00e4r inte korrekt!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_CONVERT_TO_NUMBER"

    const-string v1, "Kan inte konvertera {0} till ett nummer"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_CONVERT_TO_NODELIST"

    const-string v1, "Kan inte konvertera {0} till en NodeList!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    const-string v1, "Kan inte konvertera {0} till en NodeSetDTM!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p0, v1

    const-string v0, "ER_CANT_CONVERT_TO_TYPE"

    const-string v1, "Kan inte konvertera {0} till en type//{1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    const-string v0, "ER_EXPECTED_MATCH_PATTERN"

    const-string v1, "Matchningsm\u00f6nster i getMatchScore f\u00f6rv\u00e4ntat!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p0, v1

    const-string v0, "ER_COULDNOT_GET_VAR_NAMED"

    const-string v1, "Kunde inte h\u00e4mta variabeln {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p0, v1

    const-string v0, "ER_UNKNOWN_OPCODE"

    const-string v1, "FEL! Ok\u00e4nd op-kod: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p0, v1

    const-string v0, "ER_EXTRA_ILLEGAL_TOKENS"

    const-string v1, "Ytterligare otill\u00e5tna tecken: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p0, v1

    const-string v0, "ER_EXPECTED_DOUBLE_QUOTE"

    const-string v1, "Litteral omges av fel sorts citationstecken... dubbla citationstecken f\u00f6rv\u00e4ntade!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p0, v1

    const-string v0, "ER_EXPECTED_SINGLE_QUOTE"

    const-string v1, "Litteral omges av fel sorts citationstecken... enkla citationstecken f\u00f6rv\u00e4ntade!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p0, v1

    const-string v0, "ER_EMPTY_EXPRESSION"

    const-string v1, "Tomt uttryck!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p0, v1

    const-string v0, "ER_EXPECTED_BUT_FOUND"

    const-string v1, "{0} f\u00f6rv\u00e4ntat, men hittade: {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p0, v1

    const-string v0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const-string v1, "Programmerares f\u00f6rs\u00e4kran \u00e4r inte korrekt! - {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p0, v1

    const-string v0, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    const-string v1, "boolean(...)-argument \u00e4r inte l\u00e4ngre valfri med 19990709 XPath-utkast."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p0, v1

    const-string v0, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    const-string v1, "Hittade \',\' men inget f\u00f6reg\u00e5ende argument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p0, v1

    const-string v0, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    const-string v1, "Hittade \',\' men inget efterf\u00f6ljande argument!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p0, v1

    const-string v0, "ER_PREDICATE_ILLEGAL_SYNTAX"

    const-string v1, "\'..[predikat]\' or \'.[predikat]\' \u00e4r otill\u00e5ten syntax.  Anv\u00e4nd \'self::node()[predikat]\' ist\u00e4llet."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p0, v1

    const-string v0, "ER_ILLEGAL_AXIS_NAME"

    const-string v1, "otill\u00e5tet axel-namn: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p0, v1

    const-string v0, "ER_UNKNOWN_NODETYPE"

    const-string v1, "ok\u00e4nd nodtyp: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p0, v1

    const-string v0, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    const-string v1, "M\u00f6nsterlitteral {0} m\u00e5ste s\u00e4ttas inom citationstecken!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p0, v1

    const-string v0, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    const-string v1, "{0} kunde inte formateras till ett nummer"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p0, v1

    const-string v0, "ER_COULDNOT_CREATE_XMLPROCESSORLIAISON"

    const-string v1, "Kunde inte skapa XML TransformerFactory Liaison: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p0, v1

    const-string v0, "ER_DIDNOT_FIND_XPATH_SELECT_EXP"

    const-string v1, "Fel! Hittade inte xpath select-uttryck (-select)."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p0, v1

    const-string v0, "ER_COULDNOT_FIND_ENDOP_AFTER_OPLOCATIONPATH"

    const-string v1, "FEL! Hittade inte ENDOP efter OP_LOCATIONPATH"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p0, v1

    const-string v0, "ER_ERROR_OCCURED"

    const-string v1, "Fel intr\u00e4ffade!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p0, v1

    const-string v0, "ER_ILLEGAL_VARIABLE_REFERENCE"

    const-string v1, "VariableReference angiven f\u00f6r variabel som \u00e4r utanf\u00f6r sammanhanget eller som saknar definition!  Namn = {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, p0, v2

    const-string v0, "ER_AXES_NOT_ALLOWED"

    const-string v2, "Enbart barn::- och attribut::- axlar \u00e4r till\u00e5tna i matchningsm\u00f6nster!  Regelvidriga axlar = {0}"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, p0, v2

    const-string v0, "ER_KEY_HAS_TOO_MANY_ARGS"

    const-string v2, "key() har ett felaktigt antal argument."

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, p0, v2

    const-string v0, "ER_COUNT_TAKES_1_ARG"

    const-string v2, "Funktionen count borde ta emot ett argument!"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, p0, v2

    const-string v0, "ER_COULDNOT_FIND_FUNCTION"

    const-string v2, "Hittade inte funktionen: {0}"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, p0, v2

    const-string v0, "ER_UNSUPPORTED_ENCODING"

    const-string v2, "Ej underst\u00f6dd kodning: {0}"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x30

    aput-object v0, p0, v3

    const-string v0, "ER_PROBLEM_IN_DTM_NEXTSIBLING"

    const-string v3, "Problem intr\u00e4ffade i DTM i getNextSibling... f\u00f6rs\u00f6ker \u00e5terh\u00e4mta"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x31

    aput-object v0, p0, v3

    const-string v0, "ER_CANNOT_WRITE_TO_EMPTYNODELISTIMPL"

    const-string v3, "Programmerarfel: EmptyNodeList kan inte skrivas till."

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x32

    aput-object v0, p0, v3

    const-string v0, "ER_SETDOMFACTORY_NOT_SUPPORTED"

    const-string v3, "setDOMFactory underst\u00f6ds inte av XPathContext!"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x33

    aput-object v0, p0, v3

    const-string v0, "ER_PREFIX_MUST_RESOLVE"

    const-string v3, "Prefix must resolve to a namespace: {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x34

    aput-object v0, p0, v3

    const-string v0, "ER_PARSE_NOT_SUPPORTED"

    const-string v3, "parse (InputSource source) underst\u00f6ds inte av XPathContext! Kan inte \u00f6ppna {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x35

    aput-object v0, p0, v3

    const-string v0, "ER_SAX_API_NOT_HANDLED"

    const-string v3, "SAX API-tecken(char ch[]... hanteras inte av DTM!"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x36

    aput-object v0, p0, v3

    const-string v0, "ER_IGNORABLE_WHITESPACE_NOT_HANDLED"

    const-string v3, "ignorableWhitespace(char ch[]... hanteras inte av DTM!"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x37

    aput-object v0, p0, v3

    const-string v0, "ER_DTM_CANNOT_HANDLE_NODES"

    const-string v3, "DTMLiaison kan inte hantera noder av typen {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x38

    aput-object v0, p0, v3

    const-string v0, "ER_XERCES_CANNOT_HANDLE_NODES"

    const-string v3, "DOM2Helper kan inte hantera noder av typen {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x39

    aput-object v0, p0, v3

    const-string v0, "ER_XERCES_PARSE_ERROR_DETAILS"

    const-string v3, "DOM2Helper.parse-fel: SystemID - {0} rad - {1}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3a

    aput-object v0, p0, v3

    const-string v0, "ER_XERCES_PARSE_ERROR"

    const-string v3, "DOM2Helper.parse-fel"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3b

    aput-object v0, p0, v3

    const-string v0, "ER_INVALID_UTF16_SURROGATE"

    const-string v3, "Ogiltigt UTF-16-surrogat uppt\u00e4ckt: {0} ?"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3c

    aput-object v0, p0, v3

    const-string v0, "ER_OIERROR"

    const-string v3, "IO-fel"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3d

    aput-object v0, p0, v3

    const-string v0, "ER_CANNOT_CREATE_URL"

    const-string v3, "Kan inte skapa url f\u00f6r: {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3e

    aput-object v0, p0, v3

    const-string v0, "ER_XPATH_READOBJECT"

    const-string v3, "I XPath.readObject: {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x3f

    aput-object v0, p0, v3

    const-string v0, "ER_FUNCTION_TOKEN_NOT_FOUND"

    const-string v3, "funktionstecken saknas."

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x40

    aput-object v0, p0, v4

    const-string v0, "ER_CANNOT_DEAL_XPATH_TYPE"

    const-string v4, "Kan inte hantera XPath-typ: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x41

    aput-object v0, p0, v4

    const-string v0, "ER_NODESET_NOT_MUTABLE"

    const-string v4, "NodeSet \u00e4r of\u00f6r\u00e4nderlig"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x42

    aput-object v0, p0, v4

    const-string v0, "ER_NODESETDTM_NOT_MUTABLE"

    const-string v4, "NodeSetDTM \u00e4r of\u00f6r\u00e4nderlig"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x43

    aput-object v0, p0, v4

    const-string v0, "ER_VAR_NOT_RESOLVABLE"

    const-string v4, "Variabel ej l\u00f6sbar: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x44

    aput-object v0, p0, v4

    const-string v0, "ER_NULL_ERROR_HANDLER"

    const-string v4, "Null error handler"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x45

    aput-object v0, p0, v4

    const-string v0, "ER_PROG_ASSERT_UNKNOWN_OPCODE"

    const-string v4, "Programmerares f\u00f6rs\u00e4kran: ok\u00e4nd op-kod: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x46

    aput-object v0, p0, v4

    const-string v0, "ER_ZERO_OR_ONE"

    const-string v4, "0 eller 1"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x47

    aput-object v0, p0, v4

    const-string v0, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const-string v4, "rtf() underst\u00f6ds inte av XRTreeFragSelectWrapper!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x48

    aput-object v0, p0, v4

    const-string v0, "ER_ASNODEITERATOR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const-string v4, "asNodeIterator() underst\u00f6ds inte av XRTreeFragSelectWrapper!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x49

    aput-object v0, p0, v4

    const-string v0, "ER_FSB_NOT_SUPPORTED_XSTRINGFORCHARS"

    const-string v4, "fsb() underst\u00f6ds inte av XRStringForChars!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4a

    aput-object v0, p0, v4

    const-string v0, "ER_COULD_NOT_FIND_VAR"

    const-string v4, "Hittade inte variabeln med namn {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4b

    aput-object v0, p0, v4

    const-string v0, "ER_XSTRINGFORCHARS_CANNOT_TAKE_STRING"

    const-string v4, "XStringForChars kan inte ta en str\u00e4ng som argument"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4c

    aput-object v0, p0, v4

    const-string v0, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    const-string v4, "FastStringBuffer-argumentet f\u00e5r inte vara null"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4d

    aput-object v0, p0, v4

    const-string v0, "ER_TWO_OR_THREE"

    const-string v4, "2 eller 3"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4e

    aput-object v0, p0, v4

    const-string v0, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const-string v4, "Variabeln anv\u00e4ndes innan den bands!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x4f

    aput-object v0, p0, v4

    const-string v0, "ER_FSB_CANNOT_TAKE_STRING"

    const-string v4, "XStringForFSB kan inte ha en str\u00e4ng som argument!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x50

    aput-object v0, p0, v4

    const-string v0, "ER_SETTING_WALKER_ROOT_TO_NULL"

    const-string v4, "\n !!!! Fel! Anger roten f\u00f6r en \"walker\" till null!!!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x51

    aput-object v0, p0, v4

    const-string v0, "ER_NODESETDTM_CANNOT_ITERATE"

    const-string v4, "Detta NodeSetDTM kan inte iterera till en tidigare nod!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x52

    aput-object v0, p0, v4

    const-string v0, "ER_NODESET_CANNOT_ITERATE"

    const-string v4, "Detta NodeSet kan inte iterera till en tidigare nod!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x53

    aput-object v0, p0, v4

    const-string v0, "ER_NODESETDTM_CANNOT_INDEX"

    const-string v4, "Detta NodeSetDTM har inte funktioner f\u00f6r indexering och r\u00e4kning!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x54

    aput-object v0, p0, v4

    const-string v0, "ER_NODESET_CANNOT_INDEX"

    const-string v4, "Detta NodeSet har inte funktioner f\u00f6r indexering och r\u00e4kning!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x55

    aput-object v0, p0, v4

    const-string v0, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const-string v4, "Det g\u00e5r inte att anropa setShouldCacheNodes efter att nextNode har anropats!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x56

    aput-object v0, p0, v4

    const-string v0, "ER_ONLY_ALLOWS"

    const-string v4, "{0} till\u00e5ter bara {1} argument"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x57

    aput-object v0, p0, v4

    const-string v0, "ER_UNKNOWN_STEP"

    const-string v4, "Programmerarkontroll i getNextStepPos: ok\u00e4nt steg Typ: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x58

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_REL_LOC_PATH"

    const-string v4, "En relativ s\u00f6kv\u00e4g f\u00f6rv\u00e4ntades efter token \'/\' eller \'//\'."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x59

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_LOC_PATH"

    const-string v4, "En plats f\u00f6rv\u00e4ntades, men f\u00f6ljande token p\u00e5tr\u00e4ffades:  {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5a

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_LOC_STEP"

    const-string v4, "Ett platssteg f\u00f6rv\u00e4ntades efter token  \'/\' eller \'//\'."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5b

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_NODE_TEST"

    const-string v4, "Ett nodtest som matchar antingen NCName:* eller QName f\u00f6rv\u00e4ntades."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5c

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_STEP_PATTERN"

    const-string v4, "Ett stegm\u00f6nster f\u00f6rv\u00e4ntades, men \'/\' p\u00e5tr\u00e4ffades."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5d

    aput-object v0, p0, v4

    const-string v0, "ER_EXPECTED_REL_PATH_PATTERN"

    const-string v4, "Ett m\u00f6nster f\u00f6r relativ s\u00f6kv\u00e4g f\u00f6rv\u00e4ntades."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5e

    aput-object v0, p0, v4

    const-string v0, "ER_CANT_CONVERT_TO_BOOLEAN"

    const-string v4, "Det g\u00e5r inte att konvertera {0} till ett Booleskt v\u00e4rde."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x5f

    aput-object v0, p0, v4

    const-string v0, "ER_CANT_CONVERT_TO_SINGLENODE"

    const-string v4, "Det g\u00e5r inte att konvertera {0} till en enda nod. G\u00e4ller typerna ANY_UNORDERED_NODE_TYPE och FIRST_ORDERED_NODE_TYPE."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x60

    aput-object v0, p0, v4

    const-string v0, "ER_CANT_GET_SNAPSHOT_LENGTH"

    const-string v4, "Det g\u00e5r inte att erh\u00e5lla l\u00e4ngd f\u00f6r \u00f6gonblicksbild p\u00e5 typ: {0}. G\u00e4ller typerna UNORDERED_NODE_SNAPSHOT_TYPE och ORDERED_NODE_SNAPSHOT_TYPE."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x61

    aput-object v0, p0, v4

    const-string v0, "ER_NON_ITERATOR_TYPE"

    const-string v4, "Det g\u00e5r inte att iterera \u00f6ver den icke itererbara typen: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x62

    aput-object v0, p0, v4

    const-string v0, "ER_DOC_MUTATED"

    const-string v4, "Dokumentet har \u00e4ndrats sedan resultatet genererades. Iterering ogiltig."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x63

    aput-object v0, p0, v4

    const-string v0, "ER_INVALID_XPATH_TYPE"

    const-string v4, "Ogiltigt XPath-typargument: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x64

    aput-object v0, p0, v4

    const-string v0, "ER_EMPTY_XPATH_RESULT"

    const-string v4, "Tomt XPath-resultatobjekt"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x65

    aput-object v0, p0, v4

    const-string v0, "ER_INCOMPATIBLE_TYPES"

    const-string v4, "Den genererade typen: {0} kan inte bearbetas i den angivna typen: {1}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x66

    aput-object v0, p0, v4

    const-string v0, "ER_NULL_RESOLVER"

    const-string v4, "Det g\u00e5r inte att l\u00f6sa prefixet utan prefixl\u00f6sare."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x67

    aput-object v0, p0, v4

    const-string v0, "ER_CANT_CONVERT_TO_STRING"

    const-string v4, "Det g\u00e5r inte att konvertera {0} till en str\u00e4ng."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x68

    aput-object v0, p0, v4

    const-string v0, "ER_NON_SNAPSHOT_TYPE"

    const-string v4, "Det g\u00e5r inte att anropa snapshotItem p\u00e5 typ: {0}. Metoden g\u00e4ller typerna UNORDERED_NODE_SNAPSHOT_TYPE och ORDERED_NODE_SNAPSHOT_TYPE."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x69

    aput-object v0, p0, v4

    const-string v0, "ER_WRONG_DOCUMENT"

    const-string v4, "Kontextnoden tillh\u00f6r inte dokumentet som \u00e4r bundet till denna XPathEvaluator."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6a

    aput-object v0, p0, v4

    const-string v0, "ER_WRONG_NODETYPE"

    const-string v4, "Kontextnoden kan inte hanteras."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6b

    aput-object v0, p0, v4

    const-string v0, "ER_XPATH_ERROR"

    const-string v4, "Ok\u00e4nt fel i XPath."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6c

    aput-object v0, p0, v4

    const-string v0, "WG_LOCALE_NAME_NOT_HANDLED"

    const-string v4, "locale-namnet i format-number-funktionen \u00e4nnu inte hanterat!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6d

    aput-object v0, p0, v4

    const-string v0, "WG_PROPERTY_NOT_SUPPORTED"

    const-string v4, "XSL-Egenskap underst\u00f6ds inte: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6e

    aput-object v0, p0, v4

    const-string v0, "WG_DONT_DO_ANYTHING_WITH_NS"

    const-string v4, "G\u00f6r f\u00f6r n\u00e4rvarande inte n\u00e5gonting med namespace {0} i egenskap: {1}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x6f

    aput-object v0, p0, v4

    const-string v0, "WG_SECURITY_EXCEPTION"

    const-string v4, "SecurityException vid f\u00f6rs\u00f6k att f\u00e5 tillg\u00e5ng till XSL-systemegenskap: {0}"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x70

    aput-object v0, p0, v4

    const-string v0, "WG_QUO_NO_LONGER_DEFINED"

    const-string v4, "Gammal syntax: quo(...) \u00e4r inte l\u00e4ngre definierad i XPath."

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x71

    aput-object v0, p0, v4

    const-string v0, "WG_NEED_DERIVED_OBJECT_TO_IMPLEMENT_NODETEST"

    const-string v4, "XPath beh\u00f6ver ett deriverat objekt f\u00f6r att implementera nodeTest!"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x72

    aput-object v0, p0, v4

    const-string v0, "WG_FUNCTION_TOKEN_NOT_FOUND"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x73

    aput-object v0, p0, v3

    const-string v0, "WG_COULDNOT_FIND_FUNCTION"

    const-string v3, "Hittade inte funktion: {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x74

    aput-object v0, p0, v3

    const-string v0, "WG_CANNOT_MAKE_URL_FROM"

    const-string v3, "Kan inte skapa URL fr\u00e5n: {0}"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x75

    aput-object v0, p0, v3

    const-string v0, "WG_EXPAND_ENTITIES_NOT_SUPPORTED"

    const-string v3, "Alternativet -E underst\u00f6ds inte f\u00f6r DTM-tolk"

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x76

    aput-object v0, p0, v3

    const-string v0, "WG_ILLEGAL_VARIABLE_REFERENCE"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x77

    aput-object v0, p0, v1

    const-string v0, "WG_UNSUPPORTED_ENCODING"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x78

    aput-object v0, p0, v1

    const-string v0, "ui_language"

    const-string v1, "sv"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x79

    aput-object v0, p0, v2

    const-string v0, "help_language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7a

    aput-object v0, p0, v2

    const-string v0, "language"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7b

    aput-object v0, p0, v1

    const-string v0, "BAD_CODE"

    const-string v1, "Parameter till createMessage ligger utanf\u00f6r till\u00e5tet intervall"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7c

    aput-object v0, p0, v1

    const-string v0, "FORMAT_FAILED"

    const-string v1, "Undantag utl\u00f6st vid messageFormat-anrop"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d

    aput-object v0, p0, v1

    const-string v0, "version"

    const-string v1, ">>>>>>> Xalan Version"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7e

    aput-object v0, p0, v1

    const-string v0, "version2"

    const-string v1, "<<<<<<<"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7f

    aput-object v0, p0, v1

    const-string v0, "yes"

    const-string v1, "ja"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x80

    aput-object v0, p0, v1

    const-string v0, "line"

    const-string v1, "Rad //"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x81

    aput-object v0, p0, v1

    const-string v0, "column"

    const-string v1, "Kolumn //"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x82

    aput-object v0, p0, v1

    const-string v0, "xsldone"

    const-string v1, "XSLProcessor f\u00e4rdig"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x83

    aput-object v0, p0, v1

    const-string v0, "xpath_option"

    const-string v1, "xpath-alternativ"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x84

    aput-object v0, p0, v1

    const-string v0, "optionIN"

    const-string v1, "    [-in inputXMLURL]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x85

    aput-object v0, p0, v1

    const-string v0, "optionSelect"

    const-string v1, "[-select xpath-uttryck]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x86

    aput-object v0, p0, v1

    const-string v0, "optionMatch"

    const-string v1, "   [-match matchningsm\u00f6nster (f\u00f6r matchningsdiagnostik)]"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x87

    aput-object v0, p0, v1

    const-string v0, "optionAnyExpr"

    const-string v1, "Eller bara ett xpath-uttryck kommer att g\u00f6ra en diagnostik-dump"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x88

    aput-object v0, p0, v1

    const-string v0, "noParsermsg1"

    const-string v1, "XSL-Process misslyckades."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x89

    aput-object v0, p0, v1

    const-string v0, "noParsermsg2"

    const-string v1, "** Hittade inte tolk **"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8a

    aput-object v0, p0, v1

    const-string v0, "noParsermsg3"

    const-string v1, "V\u00e4nligen kontrollera din classpath"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8b

    aput-object v0, p0, v1

    const-string v0, "noParsermsg4"

    const-string v1, "Om du inte har IBMs XML-Tolk f\u00f6r Java, kan du ladda ner den fr\u00e5n"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8c

    aput-object v0, p0, v1

    const-string v0, "noParsermsg5"

    const-string v1, "IBMs AlphaWorks: http://www.alphaworks.ibm.com/formula/xml"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8d

    aput-object v0, p0, v1

    return-object p0
.end method
