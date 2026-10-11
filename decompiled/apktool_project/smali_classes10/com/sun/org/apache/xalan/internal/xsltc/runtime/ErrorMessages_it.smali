.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_it;
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

    const/16 p0, 0x11

    new-array p0, p0, [[Ljava/lang/Object;

    const-string v0, "RUN_TIME_INTERNAL_ERR"

    const-string v1, "Errore run-time interno in \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "Errore run-time durante l\'esecuzione di <xsl:copy>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "Conversione non valida da \'\'{0}\'\' a \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "Funzione esterna \'\'{0}\'\' non supportata da XSLTC."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "Tipo di argomento sconosciuto nell\'espressione di uguaglianza. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "Tipo di argomento \'\'{0}\'\' non valido nella chiamata a \'\'{1}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "Tentativo di formattazione del numero \'\'{0}\'\' utilizzando il modello \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "Impossibile clonare l\'\'iteratore \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "Iteratore per l\'\'asse \'\'{0}\'\' non supportato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "Iteratore per l\'\'asse immesso \'\'{0}\'\' non supportato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "Attributo \'\'{0}\'\' al di fuori dell\'\'elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "Dichiarazione dello spazio nome \'\'{0}\'\'=\'\'{1}\'\' al di fuori dell\'\'elemento. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "Lo spazio nomi per il prefisso \'\'{0}\'\' non \u00e8 stato dichiarato. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "DOMAdapter creato utilizzando il tipo di origine DOM errato."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "Il parser SAX utilizzato non gestisce gli eventi di dichiarazione DTD. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "Il parser SAX utilizzato non dispone del supporto per gli spazi nome XML. "

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "Impossibile risolvere il riferimento URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
