.class public Lorg/apache/xerces/impl/xs/XSAnnotationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/XSAnnotation;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lorg/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->f:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lorg/w3c/dom/Node;S)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    check-cast p2, Lorg/w3c/dom/Document;

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->f:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->a()Lorg/apache/xerces/parsers/DOMParser;

    move-result-object v1

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/xerces/parsers/AbstractDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/xerces/parsers/AbstractDOMParser;->dropDocumentReferences()V

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    instance-of v2, p2, Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lorg/xml/sax/ContentHandler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->f:Lorg/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/SchemaGrammar;->d()Lorg/apache/xerces/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/xerces/parsers/AbstractSAXParser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 p1, 0x0

    :try_start_2
    invoke-virtual {v0, p1}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAnnotationString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public writeAnnotation(Ljava/lang/Object;S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    check-cast p1, Lorg/xml/sax/ContentHandler;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->b(Lorg/xml/sax/ContentHandler;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/XSAnnotationImpl;->a(Lorg/w3c/dom/Node;S)V

    return v0
.end method
