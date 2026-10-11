.class public Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;
.super Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSParser;
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field private fSchemaLocations:Ljava/util/Vector;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 33
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    .line 34
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 35
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    .line 36
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 13

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    .line 11
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    .line 12
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    .line 14
    new-instance v2, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;-><init>(Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$1;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortHandler:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

    const-string v3, "canonical-form"

    const-string v4, "cdata-sections"

    const-string v5, "charset-overrides-xml-encoding"

    const-string v6, "infoset"

    const-string v7, "namespace-declarations"

    const-string v8, "split-cdata-sections"

    const-string v9, "supported-media-types-only"

    const-string v10, "certified"

    const-string v11, "well-formed"

    const-string v12, "ignore-unknown-character-denormalizations"

    .line 15
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "namespace-declarations"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "well-formed"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 24
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 26
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "canonical-form"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 27
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "charset-overrides-xml-encoding"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 28
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "split-cdata-sections"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "supported-media-types-only"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 30
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 31
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "certified"

    invoke-interface {v0, v2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    .line 1
    invoke-static {v0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    if-eqz p2, :cond_1

    .line 2
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p2, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreHandlers()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortHandler:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortHandler:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortHandler:Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "supported-media-types-only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "normalize-characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p2, "cdata-sections"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "charset-overrides-xml-encoding"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "comments"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "datatype-normalization"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "disallow-doctype"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "entities"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "infoset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "namespaces"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "namespace-declarations"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "validate"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "validate-if-schema"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "element-content-whitespace"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "xml-declaration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return p2

    :cond_6
    :goto_2
    xor-int/lit8 p0, p2, 0x1

    return p0

    :cond_7
    const-string p0, "error-handler"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    instance-of p0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0

    :cond_9
    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    instance-of p0, p2, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0

    :cond_b
    const-string p0, "schema-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_d

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    return v0

    :cond_d
    :goto_3
    return v2

    :cond_e
    const-string p0, "schema-location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    instance-of p0, p2, Ljava/lang/String;

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0

    :cond_10
    const-string p0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    return v2
.end method

.method public dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v5

    const-string v6, "UTF-16"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-16"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    const-string v0, "no-input-specified"

    if-eqz p1, :cond_6

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_6
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    const/16 p1, 0x51

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBusy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    return p0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSParserFilter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "http://apache.org/xml/features/include-comments"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "http://xml.org/sax/features/namespaces"

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://xml.org/sax/features/validation"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "http://apache.org/xml/features/validation/dynamic"

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "disallow-doctype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "namespace-declarations"

    const-string v8, "http://apache.org/xml/features/create-cdata-nodes"

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v8}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_8

    :cond_10
    const/4 p0, 0x0

    :goto_8
    if-eqz p0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object p0

    :cond_12
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v8}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_13
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object p0

    :cond_14
    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_d

    :cond_15
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "supported-media-types-only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b

    :cond_16
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v1

    :cond_18
    const-string v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz p0, :cond_19

    instance-of p1, p0, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    if-eqz p1, :cond_19

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_19
    return-object v1

    :cond_1a
    const-string v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    return-object p0

    :cond_1c
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1d
    const-string v0, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1f
    :goto_b
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_20
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_c
    return-object p0

    :cond_21
    :goto_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "charset-overrides-xml-encoding"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "supported-media-types-only"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "disallow-doctype"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public parse(Lorg/w3c/dom/ls/LSInput;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->restoreHandlers()V

    return-object v1

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    if-eq p1, v0, :cond_3

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_2
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    const/16 v0, 0x51

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "http://www.w3.org/dom/DOMTR"

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public parseURI(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {v0, v1, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->restoreHandlers()V

    return-object v1

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->abort:Ljava/lang/RuntimeException;

    if-eq v0, p1, :cond_3

    instance-of p1, v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, p1, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_2
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    const/16 p1, 0x51

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "http://www.w3.org/dom/DOMTR"

    const-string p1, "INVALID_STATE_ERR"

    invoke-static {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public parseWithContext(Lorg/w3c/dom/ls/LSInput;Lorg/w3c/dom/Node;S)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "namespace-declarations"

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fRejectedElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fFilterReject:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    return-void
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSParserFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Ljava/lang/Boolean;

    const-string v5, "FEATURE_NOT_FOUND"

    const-string v6, "http://apache.org/xml/properties/dom/document-class-name"

    const-string v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const-string v8, "http://apache.org/xml/features/validation/schema"

    const-string v10, "http://www.w3.org/dom/DOMTR"

    if-eqz v3, :cond_13

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :try_start_0
    const-string v3, "comments"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "http://apache.org/xml/features/include-comments"

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v12, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_0
    const-string v3, "datatype-normalization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "http://apache.org/xml/features/validation/schema/normalized-value"

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v13, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_1
    const-string v3, "entities"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v14, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    if-eqz v3, :cond_2

    :try_start_3
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v14, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_2
    const-string v3, "disallow-doctype"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_3
    const-string v3, "supported-media-types-only"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "FEATURE_NOT_SUPPORTED"

    if-nez v3, :cond_11

    :try_start_4
    const-string v3, "normalize-characters"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "check-character-normalization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "canonical-form"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v3, "namespaces"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v15, "http://xml.org/sax/features/namespaces"

    if-eqz v3, :cond_5

    :try_start_5
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v15, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_5
    const-string v3, "infoset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v11, "http://apache.org/xml/features/create-cdata-nodes"

    const-string v9, "http://apache.org/xml/features/validation/dynamic"

    move-object/from16 v16, v5

    const-string v5, "namespace-declarations"

    if-eqz v3, :cond_6

    if-eqz v2, :cond_25

    :try_start_6
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v3, 0x1

    invoke-interface {v2, v15, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v12, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v3, 0x0

    invoke-interface {v2, v9, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v14, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v13, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v11, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_6
    const-string v3, "cdata-sections"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v11, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v5, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_8
    const-string v3, "well-formed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "ignore-unknown-character-denormalizations"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const-string v3, "validate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v4, "http://xml.org/sax/features/validation"

    invoke-interface {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v8, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v7, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_a
    if-eqz v2, :cond_25

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v2, 0x0

    invoke-interface {v0, v9, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_b
    const-string v3, "validate-if-schema"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v9, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-eqz v2, :cond_25

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://xml.org/sax/features/validation"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_c
    const-string v3, "element-content-whitespace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_d
    const-string v3, "psvi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl"

    invoke-interface {v0, v6, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_e
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_f
    :goto_0
    if-eqz v2, :cond_10

    goto/16 :goto_7

    :cond_10
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/w3c/dom/DOMException;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_11
    :goto_1
    move-object/from16 v16, v5

    if-nez v2, :cond_12

    goto/16 :goto_7

    :cond_12
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v4, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/w3c/dom/DOMException;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-object/from16 v16, v5

    :catch_1
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-static {v10, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_13
    move-object v3, v5

    const-string v4, "error-handler"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x11

    const-string v9, "TYPE_MISMATCH_ERR"

    if-eqz v4, :cond_16

    instance-of v3, v2, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v3, :cond_15

    if-nez v2, :cond_14

    goto :goto_2

    :cond_14
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v9, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v5, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_15
    :goto_2
    :try_start_7
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    check-cast v2, Lorg/w3c/dom/DOMErrorHandler;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;-><init>(Lorg/w3c/dom/DOMErrorHandler;)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/util/DOMErrorHandlerWrapper;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_7

    :cond_16
    const-string v4, "resource-resolver"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    instance-of v3, v2, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v3, :cond_18

    if-nez v2, :cond_17

    goto :goto_3

    :cond_17
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v9, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v5, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_18
    :goto_3
    :try_start_8
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    check-cast v2, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v0, v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_7

    :cond_19
    const-string v4, "schema-location"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_1f

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1b

    if-nez v2, :cond_1a

    goto :goto_4

    :cond_1a
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v9, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v5, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1b
    :goto_4
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    if-nez v2, :cond_1c

    :try_start_9
    iput-object v11, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v1, v11}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1c
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string v5, " \n\t\r"

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1d
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaLocations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1e
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_7

    :cond_1f
    const-string v4, "schema-type"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_21

    if-nez v2, :cond_20

    goto :goto_6

    :cond_20
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v9, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v5, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_21
    :goto_6
    const-string v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    if-nez v2, :cond_22

    :try_start_a
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v7, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v1, v11}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v11, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_7

    :cond_22
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v4, 0x1

    invoke-interface {v2, v8, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v7, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_7

    :cond_23
    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const/4 v4, 0x0

    invoke-interface {v2, v8, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v7, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_a
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    :cond_24
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, v6, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_2
    :cond_25
    :goto_7
    return-void

    :cond_26
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method
