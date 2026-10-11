.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/ErrorMessages_ca;
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

    const-string v1, "S\'\'ha produ\u00eft un error intern de temps d\'\'execuci\u00f3 a \'\'{0}\'\'"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "RUN_TIME_COPY_ERR"

    const-string v1, "Es produeix un error de temps d\'execuci\u00f3 en executar <xsl:copy>."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "La conversi\u00f3 de \'\'{0}\'\' a \'\'{1}\'\' no \u00e9s v\u00e0lida."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const-string v0, "EXTERNAL_FUNC_ERR"

    const-string v1, "XSLTC no d\u00f3na suport a la funci\u00f3 externa \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "EQUALITY_EXPR_ERR"

    const-string v1, "L\'expressi\u00f3 d\'igualtat cont\u00e9 un tipus d\'argument desconegut."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "La crida a \'\'{1}\'\' cont\u00e9 un tipus d\'\'argument \'\'{0}\'\' no v\u00e0lid."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const-string v0, "FORMAT_NUMBER_ERR"

    const-string v1, "S\'\'ha intentat donar format al n\u00famero \'\'{0}\'\' mitjan\u00e7ant el patr\u00f3 \'\'{1}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const-string v0, "ITERATOR_CLONE_ERR"

    const-string v1, "No es pot clonar l\'\'iterador \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    const-string v0, "AXIS_SUPPORT_ERR"

    const-string v1, "L\'\'iterador de l\'\'eix \'\'{0}\'\' no t\u00e9 suport."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const-string v0, "TYPED_AXIS_SUPPORT_ERR"

    const-string v1, "L\'\'iterador de l\'\'eix escrit \'\'{0}\'\' no t\u00e9 suport."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    const-string v0, "STRAY_ATTRIBUTE_ERR"

    const-string v1, "L\'\'atribut \'\'{0}\'\' es troba fora de l\'\'element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    const-string v0, "STRAY_NAMESPACE_ERR"

    const-string v1, "La declaraci\u00f3 d\'\'espai de noms \'\'{0}\'\'=\'\'{1}\'\' es troba fora de l\'\'element."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p0, v1

    const-string v0, "NAMESPACE_PREFIX_ERR"

    const-string v1, "L\'\'espai de noms del prefix \'\'{0}\'\' no s\'\'ha declarat."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p0, v1

    const-string v0, "DOM_ADAPTER_INIT_ERR"

    const-string v1, "DOMAdapter s\'ha creat mitjan\u00e7ant un tipus incorrecte de DOM d\'origen."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p0, v1

    const-string v0, "PARSER_DTD_SUPPORT_ERR"

    const-string v1, "L\'analitzador SAX que feu servir no gestiona esdeveniments de declaraci\u00f3 de DTD."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p0, v1

    const-string v0, "NAMESPACES_SUPPORT_ERR"

    const-string v1, "L\'analitzador SAX que feu servir no d\u00f3na suport a espais de noms XML."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p0, v1

    const-string v0, "CANT_RESOLVE_RELATIVE_URI_ERR"

    const-string v1, "No s\'\'ha pogut resoldre la refer\u00e8ncia d\'\'URI \'\'{0}\'\'."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p0, v1

    return-object p0
.end method
