.class public Lorg/apache/xmlbeans/XmlOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlOptions$BeanMethod;,
        Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENTITY_EXPANSION_LIMIT:I = 0x800

.field private static final EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions;->EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    iget-object v1, v0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p1, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlOptions;->EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    :cond_0
    return-object p0
.end method

.method private set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method private set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method private set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public disallowDocTypeDeclaration()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DISALLOW_DOCTYPE_DECLARATION:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->BASE_URI:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URI;

    return-object p0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->CHARACTER_ENCODING:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCompileMdefNamespaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_MDEF_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getCompilePartialMethod()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_PARTIAL_METHODS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getCompileSubstituteNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_SUBSTITUTE_NAMES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getDocumentSourceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DOCUMENT_SOURCE_NAME:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDocumentType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DOCUMENT_TYPE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType;

    return-object p0
.end method

.method public getEntityExpansionLimit()I
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ENTITY_EXPANSION_LIMIT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/16 p0, 0x800

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ENTITY_RESOLVER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/EntityResolver;

    return-object p0
.end method

.method public getErrorListener()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ERROR_LISTENER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getLoadAdditionalNamespaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_ADDITIONAL_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getLoadEntityBytesLimit()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_ENTITY_BYTES_LIMIT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getLoadReplaceDocumentElement()Ljavax/xml/namespace/QName;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_REPLACE_DOCUMENT_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getLoadSubstituteNamespaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_SUBSTITUTE_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getLoadUseXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_XMLREADER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public getSaaj()Lorg/apache/xmlbeans/impl/store/Saaj;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAAJ_IMPL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Saaj;

    return-object p0
.end method

.method public getSaveCDataEntityCountThreshold()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_CDATA_ENTITY_COUNT_THRESHOLD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getSaveCDataLengthThreshold()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_CDATA_LENGTH_THRESHOLD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getSaveFilterProcinst()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_FILTER_PROCINST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSaveImplicitNamespaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_IMPLICIT_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getSavePrettyPrintIndent()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT_INDENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getSavePrettyPrintOffset()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT_OFFSET:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getSaveSubstituteCharacters()Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SUBSTITUTE_CHARACTERS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    return-object p0
.end method

.method public getSaveSuggestedPrefixes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SUGGESTED_PREFIXES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getSaveSyntheticDocumentElement()Ljavax/xml/namespace/QName;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SYNTHETIC_DOCUMENT_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getSchemaCodePrinter()Lorg/apache/xmlbeans/SchemaCodePrinter;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SCHEMA_CODE_PRINTER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaCodePrinter;

    return-object p0
.end method

.method public getUseSameLocale()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->USE_SAME_LOCALE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getXqueryCurrentNodeVar()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XQUERY_CURRENT_NODE_VAR:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getXqueryVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XQUERY_VARIABLE_MAP:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAttributeValidationCompatMode()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ATTRIBUTE_VALIDATION_COMPAT_MODE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompileAnnotationAsJavadoc()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_ANNOTATION_JAVADOC:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompileDownloadUrls()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_DOWNLOAD_URLS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isCompileNoAnnotations()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_ANNOTATIONS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isCompileNoPvrRule()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_PVR_RULE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isCompileNoUpaRule()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_UPA_RULE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isCompileNoValidation()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_VALIDATION:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isCompilePartialTypesystem()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_PARTIAL_TYPESYSTEM:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCopyUseNewSynchronizationDomain()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COPY_USE_NEW_SYNC_DOMAIN:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadDTDGrammar()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_DTD_GRAMMAR:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadExternalDTD()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_EXTERNAL_DTD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadLineNumbers()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_LINE_NUMBERS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadLineNumbersEndElement()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_LINE_NUMBERS_END_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadMessageDigest()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_MESSAGE_DIGEST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadStripComments()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_COMMENTS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadStripProcinsts()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_PROCINSTS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadTrimTextBuffer()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_TRIM_TEXT_BUFFER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadUseDefaultResolver()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_DEFAULT_RESOLVER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isLoadUseLocaleCharUtil()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_LOCALE_CHAR_UTIL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaveAggressiveNamespaces()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_AGGRESSIVE_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveInner()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_INNER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveNamespacesFirst()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_NAMESPACES_FIRST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveNoXmlDecl()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_NO_XML_DECL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveOptimizeForSpeed()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_OPTIMIZE_FOR_SPEED:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaveOuter()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_OUTER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSavePrettyPrint()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveSaxNoNSDeclsInAttributes()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSaveUseOpenFrag()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_USE_OPEN_FRAGMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isSetLoadStripWhitespace()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_WHITESPACE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isUnsynchronized()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->UNSYNCHRONIZED:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isUseCDataBookmarks()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_SAVE_CDATA_BOOKMARKS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isUseDefaultNamespace()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_USE_DEFAULT_NAMESPACE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isValidateOnSet()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_ON_SET:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isValidateStrict()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_STRICT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isValidateTextOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_TEXT_ONLY:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isValidateTreatLaxAsSkip()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_TREAT_LAX_AS_SKIP:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Z

    move-result p0

    return p0
.end method

.method public isXPathUseSaxon()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XPATH_USE_SAXON:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isXPathUseXmlBeans()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XPATH_USE_XMLBEANS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttributeValidationCompatMode(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ATTRIBUTE_VALIDATION_COMPAT_MODE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setBaseURI(Ljava/net/URI;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->BASE_URI:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->CHARACTER_ENCODING:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileAnnotationAsJavadoc()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileAnnotationAsJavadoc(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileAnnotationAsJavadoc(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_ANNOTATION_JAVADOC:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileDownloadUrls(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_DOWNLOAD_URLS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileMdefNamespaces(Ljava/util/Set;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_MDEF_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoAnnotations()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoAnnotations(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoAnnotations(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_ANNOTATIONS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoPvrRule(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_PVR_RULE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoUpaRule(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_UPA_RULE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileNoValidation()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_NO_VALIDATION:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompilePartialMethod(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/xmlbeans/XmlOptions$BeanMethod;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_PARTIAL_METHODS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_PARTIAL_METHODS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)V

    :goto_1
    return-void
.end method

.method public setCompilePartialTypesystem()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setCompilePartialTypesystem(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompilePartialTypesystem(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_PARTIAL_TYPESYSTEM:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCompileSubstituteNames(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljavax/xml/namespace/QName;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COMPILE_SUBSTITUTE_NAMES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setCopyUseNewSynchronizationDomain(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->COPY_USE_NEW_SYNC_DOMAIN:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setDisallowDocTypeDeclaration(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DISALLOW_DOCTYPE_DECLARATION:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DOCUMENT_SOURCE_NAME:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->DOCUMENT_TYPE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setEntityExpansionLimit(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ENTITY_EXPANSION_LIMIT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ENTITY_RESOLVER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/xmlbeans/XmlError;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->ERROR_LISTENER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadAdditionalNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_ADDITIONAL_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadDTDGrammar(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_DTD_GRAMMAR:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadEntityBytesLimit(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_ENTITY_BYTES_LIMIT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadExternalDTD(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_EXTERNAL_DTD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadLineNumbers(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_LINE_NUMBERS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadLineNumbersEndElement()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbersEndElement(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadLineNumbersEndElement(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers(Z)Lorg/apache/xmlbeans/XmlOptions;

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_LINE_NUMBERS_END_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadMessageDigest(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_MESSAGE_DIGEST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadReplaceDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_REPLACE_DOCUMENT_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripComments()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripComments(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripComments(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_COMMENTS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripProcinsts()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripProcinsts(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripProcinsts(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_PROCINSTS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripWhitespace()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripWhitespace(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadStripWhitespace(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_STRIP_WHITESPACE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_SUBSTITUTE_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadTrimTextBuffer()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadTrimTextBuffer(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadTrimTextBuffer(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_TRIM_TEXT_BUFFER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadUseDefaultResolver()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadUseDefaultResolver(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadUseDefaultResolver(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_DEFAULT_RESOLVER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadUseLocaleCharUtil(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_LOCALE_CHAR_UTIL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setLoadUseXMLReader(Lorg/xml/sax/XMLReader;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_USE_XMLREADER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaaj(Lorg/apache/xmlbeans/impl/store/Saaj;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAAJ_IMPL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveAggressiveNamespaces(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_AGGRESSIVE_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveCDataEntityCountThreshold(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_CDATA_ENTITY_COUNT_THRESHOLD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveCDataLengthThreshold(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_CDATA_LENGTH_THRESHOLD:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveFilterProcinst(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_FILTER_PROCINST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveImplicitNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_IMPLICIT_NAMESPACES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveInner()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveInner(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveInner(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_INNER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveNamespacesFirst()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNamespacesFirst(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveNamespacesFirst(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_NAMESPACES_FIRST:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveNoXmlDecl()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNoXmlDecl(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveNoXmlDecl(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_NO_XML_DECL:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveOptimizeForSpeed(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_OPTIMIZE_FOR_SPEED:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveOuter(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_OUTER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSavePrettyPrint(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSavePrettyPrintIndent(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT_INDENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSavePrettyPrintOffset(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_PRETTY_PRINT_OFFSET:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveSaxNoNSDeclsInAttributes()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSaxNoNSDeclsInAttributes(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveSaxNoNSDeclsInAttributes(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveSubstituteCharacters(Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SUBSTITUTE_CHARACTERS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SUGGESTED_PREFIXES:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_SYNTHETIC_DOCUMENT_ELEMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveUseOpenFrag()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveUseOpenFrag(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSaveUseOpenFrag(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_USE_OPEN_FRAGMENT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSchemaCodePrinter(Lorg/apache/xmlbeans/SchemaCodePrinter;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SCHEMA_CODE_PRINTER:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUnsynchronized()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setUnsynchronized(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUnsynchronized(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->UNSYNCHRONIZED:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUseCDataBookmarks()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->LOAD_SAVE_CDATA_BOOKMARKS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUseDefaultNamespace(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->SAVE_USE_DEFAULT_NAMESPACE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setUseSameLocale(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->USE_SAME_LOCALE:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateOnSet()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateOnSet(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateOnSet(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_ON_SET:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateStrict()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateStrict(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateStrict(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_STRICT:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateTextOnly()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTextOnly(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateTextOnly(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_TEXT_ONLY:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTreatLaxAsSkip(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setValidateTreatLaxAsSkip(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->VALIDATE_TREAT_LAX_AS_SKIP:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXPathUseSaxon()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setXPathUseSaxon(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXPathUseSaxon(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XPATH_USE_SAXON:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXPathUseXmlBeans()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->setXPathUseSaxon(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXPathUseXmlBeans(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XPATH_USE_XMLBEANS:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Z)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXqueryCurrentNodeVar(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XQUERY_CURRENT_NODE_VAR:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method

.method public setXqueryVariables(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/xmlbeans/XmlOptions;"
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;->XQUERY_VARIABLE_MAP:Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Lorg/apache/xmlbeans/XmlOptions$XmlOptionsKeys;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    return-object p0
.end method
