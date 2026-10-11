.class public Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lorg/w3c/dom/ls/DOMImplementationLS;


# static fields
.field private static final SIZE:I = 0x2

.field static singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;


# instance fields
.field private currentSize:I

.field private docAndDoctypeCounter:I

.field private dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

.field private freeDTDValidatorIndex:I

.field private freeValidatorIndex:I

.field private validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->currentSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized assignDocTypeNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized assignDocumentNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final checkQName(Ljava/lang/String;)V
    .locals 8

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_7

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_7

    if-ne p0, v0, :cond_7

    const/4 p0, 0x5

    const-string v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNCName(I)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v6, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNCNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/2addr v6, v5

    :goto_2
    if-ge v6, v1, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNCName(I)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_5
    return-void

    :cond_6
    invoke-static {v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_7
    const-string p0, "NAMESPACE_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->checkQName(Ljava/lang/String;)V

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createLSInput()Lorg/w3c/dom/ls/LSInput;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMInputImpl;-><init>()V

    return-object p0
.end method

.method public createLSOutput()Lorg/w3c/dom/ls/LSOutput;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMOutputImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMOutputImpl;-><init>()V

    return-object p0
.end method

.method public createLSParser(SLjava/lang/String;)Lorg/w3c/dom/ls/LSParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    const-string p0, "http://www.w3.org/TR/REC-xml"

    if-eqz p2, :cond_0

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;

    const-string p1, "com.sun.org.apache.xerces.internal.parsers.DTDConfiguration"

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;

    const-string p1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serialize/DOMSerializerImpl;-><init>()V

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const-string p0, "+XPath"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return-object p2

    :cond_1
    sget-object p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    return-object p0

    :cond_2
    return-object p2
.end method

.method public declared-synchronized getValidator(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    if-gez p1, :cond_0

    const-string p1, "com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator"

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    aget-object v2, v0, p1

    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    aput-object v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    const-string v0, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    if-gez p1, :cond_2

    const-string p1, "com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator"

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    aget-object v2, v0, p1

    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    aput-object v1, v0, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, "+XPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "3.0"

    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    :try_start_0
    const-string p1, "com.sun.org.apache.xpath.internal.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    move p2, p0

    :goto_2
    array-length v1, p1

    if-ge p2, v1, :cond_4

    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return v0

    :catch_0
    return p0

    :cond_5
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v2, "Core"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "2.0"

    const-string v5, "1.0"

    if-eqz v2, :cond_7

    if-nez v1, :cond_9

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    const-string v2, "XML"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_9

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string v2, "LS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v1, :cond_9

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move p0, v0

    :cond_a
    return p0
.end method

.method public declared-synchronized releaseValidator(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    array-length v2, v0

    if-ne v2, p1, :cond_0

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->currentSize:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->currentSize:I

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->validators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeValidatorIndex:I

    aput-object p2, p1, v0

    goto :goto_0

    :cond_1
    const-string v0, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    array-length v2, v0

    if-ne v2, p1, :cond_2

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->currentSize:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->currentSize:I

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->dtdValidators:[Lcom/sun/org/apache/xerces/internal/impl/RevalidationHandler;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->freeDTDValidatorIndex:I

    aput-object p2, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
