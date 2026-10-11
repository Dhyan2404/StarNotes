.class public Lorg/apache/xml/serialize/DOMSerializerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSSerializer;
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/DOMSerializerImpl$a;
    }
.end annotation


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISCARDDEFAULT:S = 0x40s

.field protected static final DOM_ELEMENT_CONTENT_WHITESPACE:S = 0x400s

.field protected static final ENTITIES:S = 0x4s

.field protected static final INFOSET:S = 0x80s

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NSDECL:S = 0x200s

.field protected static final PRETTY_PRINT:S = 0x800s

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final WELLFORMED:S = 0x2s

.field protected static final XMLDECL:S = 0x100s


# instance fields
.field public e:Lorg/apache/xml/serialize/XMLSerializer;

.field public f:Lorg/apache/xml/serialize/XML11Serializer;

.field protected features:S

.field public g:Lorg/w3c/dom/DOMStringList;

.field public h:Lorg/w3c/dom/DOMErrorHandler;

.field public final i:Lorg/apache/xerces/dom/DOMErrorImpl;

.field public final j:Lorg/apache/xerces/dom/DOMLocatorImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iget-short v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    new-instance v0, Lorg/apache/xml/serialize/XMLSerializer;

    invoke-direct {v0}, Lorg/apache/xml/serialize/XMLSerializer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/DOMSerializerImpl;->e(Lorg/apache/xml/serialize/XMLSerializer;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method public final b(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method public final c(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$a;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    throw p0

    :catchall_0
    :cond_1
    return-object p0
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "element-content-whitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    return p2

    :cond_4
    :goto_0
    xor-int/2addr p0, p2

    :cond_5
    :goto_1
    return p0

    :cond_6
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    instance-of p1, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iput-object p0, p2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    iget-object v0, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    iget-object p0, p2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    iget-object v0, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iput-object p0, p2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public final e(Lorg/apache/xml/serialize/XMLSerializer;)V
    .locals 0

    new-instance p0, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {p0}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p0, p1, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    new-instance p0, Lorg/apache/xerces/util/NamespaceSupport;

    invoke-direct {p0}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object p0, p1, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    new-instance p0, Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {p0}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object p0, p1, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public final f(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xml/serialize/XMLSerializer;->reset()Z

    iget-short v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    iput-short v0, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iput-object v1, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v1, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    iget-object v0, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    iget-short v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lorg/apache/xml/serialize/OutputFormat;->setOmitComments(Z)V

    iget-object p1, p1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    iget-short v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lorg/apache/xml/serialize/OutputFormat;->setOmitXMLDeclaration(Z)V

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_c

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    move-object p1, p2

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_5

    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_5
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isXMLVersionChanged()"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p1

    :catch_0
    :cond_6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_b

    move-object p1, p2

    :goto_6
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xml/serialize/DOMSerializerImpl;->g(Lorg/w3c/dom/Node;ZZ)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    move-object p1, v1

    goto :goto_6

    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-ne p2, p1, :cond_a

    move-object p1, v0

    goto :goto_6

    :cond_a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_7

    :cond_b
    invoke-virtual {p0, p2, v3, v2}, Lorg/apache/xml/serialize/DOMSerializerImpl;->g(Lorg/w3c/dom/Node;ZZ)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final g(Lorg/w3c/dom/Node;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v1, v3, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string v4, "Element"

    const/4 v10, 0x0

    const-string v11, "wf-invalid-character-in-node-name"

    const-string v12, "http://www.w3.org/dom/DOMTR"

    const/4 v5, 0x1

    if-eq v2, v5, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    const/4 v5, 0x4

    if-eq v2, v5, :cond_5

    const/4 v6, 0x5

    if-eq v2, v6, :cond_4

    const/4 v5, 0x7

    if-eq v2, v5, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-short v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    check-cast v1, Lorg/w3c/dom/Comment;

    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v3, v1, v9}, Lorg/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v2}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    if-eqz v9, :cond_2

    invoke-static {v3}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v11, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x3

    const-string v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v2}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v4, v2, v9}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_4
    if-eqz p2, :cond_c

    iget-short v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/2addr v2, v5

    if-eqz v2, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_4

    :cond_5
    iget-object v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v3, v1, v9}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_6
    if-eqz p2, :cond_8

    iget-short v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/2addr v2, v5

    if-eqz v2, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12, v11, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x3

    const-string v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    move-object v13, v2

    goto :goto_2

    :cond_9
    move-object v13, v10

    :goto_2
    if-eqz v13, :cond_c

    const/4 v2, 0x0

    move v14, v2

    :goto_3
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-lt v14, v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/w3c/dom/Attr;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v15, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iget-object v2, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v5, v13

    move-object v6, v15

    move/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    if-eqz p2, :cond_b

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Attr"

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12, v11, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->i:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x3

    const-string v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    iget-object v0, v0, Lorg/apache/xml/serialize/DOMSerializerImpl;->j:Lorg/apache/xerces/dom/DOMLocatorImpl;

    iput-object v10, v0, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object p0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/2addr p0, v1

    if-eqz p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_c

    :cond_10
    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object p0

    :cond_12
    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_13

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_13
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object p0

    :cond_14
    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-short p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p0, 0x4

    if-nez p1, :cond_15

    and-int/lit8 p1, p0, 0x8

    if-nez p1, :cond_15

    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_15

    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_15

    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_15

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_15

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_15
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_16
    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0

    :cond_18
    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    if-nez p0, :cond_1a

    const-string p0, "schema-location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "schema-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_a

    :cond_19
    const-string p0, "FEATURE_NOT_FOUND"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1a
    :goto_a
    const-string p0, "FEATURE_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1b
    :goto_b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1c
    :goto_c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->g:Lorg/w3c/dom/DOMStringList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "discard-default-content"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "xml-declaration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "format-pretty-print"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lorg/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->g:Lorg/w3c/dom/DOMStringList;

    :cond_0
    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->g:Lorg/w3c/dom/DOMStringList;

    return-object p0
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iput-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    const/16 v1, 0x8

    const-string v2, "FEATURE_NOT_FOUND"

    const-string v3, "FEATURE_NOT_SUPPORTED"

    const/16 v4, 0x9

    const-string v5, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_1b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1e

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 p1, p1, -0x5

    int-to-short p1, p1

    and-int/lit8 p1, p1, -0x9

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    or-int/lit16 p1, p1, 0x200

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x2

    int-to-short p1, p1

    or-int/lit8 p1, p1, 0x20

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_6

    :cond_0
    const-string v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_1

    or-int/lit16 p1, p1, 0x100

    goto :goto_0

    :cond_1
    and-int/lit16 p1, p1, -0x101

    goto :goto_0

    :cond_2
    const-string v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_3

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p1, -0x2

    :goto_1
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iput-boolean p2, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    goto/16 :goto_6

    :cond_4
    const-string v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_5

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_5
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    :cond_6
    const-string v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_7

    or-int/lit8 p1, p1, 0x40

    goto :goto_0

    :cond_7
    and-int/lit8 p1, p1, -0x41

    goto :goto_0

    :cond_8
    const-string v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_9

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_9
    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :cond_a
    const-string v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_b

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_b
    and-int/lit8 p1, p1, -0x5

    goto :goto_0

    :cond_c
    const-string v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_d

    or-int/2addr p1, v1

    goto/16 :goto_0

    :cond_d
    and-int/lit8 p1, p1, -0x9

    goto/16 :goto_0

    :cond_e
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_f

    or-int/lit8 p1, p1, 0x20

    goto/16 :goto_0

    :cond_f
    and-int/lit8 p1, p1, -0x21

    goto/16 :goto_0

    :cond_10
    const-string v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_11

    or-int/lit16 p1, p1, 0x800

    goto/16 :goto_0

    :cond_11
    and-int/lit16 p1, p1, -0x801

    goto/16 :goto_0

    :cond_12
    const-string v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4

    :cond_13
    const-string v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    if-eqz p2, :cond_14

    or-int/lit16 p1, p1, 0x200

    goto :goto_2

    :cond_14
    and-int/lit16 p1, p1, -0x201

    :goto_2
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-object p0, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iput-boolean p2, p0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    goto :goto_6

    :cond_15
    const-string p0, "element-content-whitespace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_3

    :cond_16
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_17
    :goto_3
    if-eqz p2, :cond_18

    goto :goto_6

    :cond_18
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_19
    :goto_4
    if-nez p2, :cond_1a

    goto :goto_6

    :cond_1a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1b
    const-string v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_1d

    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1c

    goto :goto_5

    :cond_1c
    const-string p0, "TYPE_MISMATCH_ERR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1d
    :goto_5
    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    iput-object p2, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->h:Lorg/w3c/dom/DOMErrorHandler;

    :cond_1e
    :goto_6
    return-void

    :cond_1f
    const-string p0, "resource-resolver"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    const-string p0, "schema-location"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    const-string p0, "schema-type"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    if-eqz p2, :cond_20

    goto :goto_7

    :cond_20
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_21
    :goto_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, v3, p0}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const-string v0, "no-output-specified"

    const-string v1, "http://apache.org/xml/serializer"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->c(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v3}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v3, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v3}, Lorg/apache/xml/serialize/DOMSerializerImpl;->e(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v4, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v3, v4}, Lorg/apache/xml/serialize/DOMSerializerImpl;->d(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    iget-object v3, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "UTF-8"

    :cond_3
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x52

    :try_start_0
    invoke-virtual {p0, v3, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->f(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object p0, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, v4}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v4

    invoke-interface {p2}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez v4, :cond_7

    if-nez p0, :cond_6

    if-nez p2, :cond_5

    invoke-static {v1, v0, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_4

    new-instance p1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short v5, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_4
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p1, v7, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p2}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    :cond_6
    invoke-virtual {v3, p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0x9

    const/4 v0, 0x1

    if-ne p0, p2, :cond_8

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v3, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_9

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v3, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v0, :cond_a

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v3, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v0

    :cond_a
    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    iget-object p1, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_b

    new-instance p1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_b
    invoke-static {v7, p0}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_1
    move-exception p0

    sget-object p1, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, p1, :cond_c

    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v2

    :cond_c
    :try_start_2
    invoke-static {v7, p0}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    move-exception p0

    iget-object p1, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "unsupported-encoding"

    if-eqz p1, :cond_d

    :try_start_3
    new-instance p1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short v5, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p0, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_d
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-static {v1, p2, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    throw p0
.end method

.method public writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const-string v0, "unable-to-serialize-node"

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->c(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v1}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->e(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v2, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serialize/DOMSerializerImpl;->d(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    :goto_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x52

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->f(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object p0, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string v6, "UTF-16"

    invoke-virtual {p0, v6}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v6, 0x9

    if-ne p0, v6, :cond_2

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 v6, 0xb

    if-ne p0, v6, :cond_3

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v3, :cond_4

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :try_start_1
    const-string p0, "http://apache.org/xml/serializer"

    invoke-static {p0, v0, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_5

    new-instance p1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v0, 0x3

    iput-short v0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {v0, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_5
    new-instance p1, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p1, v5, p0}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "STRING_TOO_LONG"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v0, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    sget-object p1, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, p1, :cond_6

    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return-object v4

    :cond_6
    :try_start_3
    invoke-static {v5, p0}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_2
    move-exception p0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    throw p0
.end method

.method public writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->c(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v1}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->e(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v2, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serialize/DOMSerializerImpl;->d(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->f:Lorg/apache/xml/serialize/XML11Serializer;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serialize/DOMSerializerImpl;->e:Lorg/apache/xml/serialize/XMLSerializer;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "UTF-8"

    :cond_3
    const/16 v3, 0x52

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/xml/serialize/DOMSerializerImpl;->f(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    iget-object p0, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0, v2}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0x9

    const/4 v2, 0x1

    if-ne p0, p2, :cond_4

    check-cast p1, Lorg/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Document;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_5

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    if-ne p0, v2, :cond_6

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serialize(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v2

    :cond_6
    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    iget-object p1, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz p1, :cond_7

    new-instance p1, Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object p0, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 p2, 0x2

    iput-short p2, p1, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object p2, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    invoke-interface {p2, p1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_7
    invoke-static {v3, p0}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_1
    move-exception p0

    sget-object p1, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, p1, :cond_8

    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    return v0

    :cond_8
    :try_start_2
    invoke-static {v3, p0}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSException;

    throw p0

    :catch_2
    move-exception p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->a()V

    throw p0
.end method
