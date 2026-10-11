.class public Lcom/sunia/HTREnginev2/rqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/sqi;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sqi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqi;->e:Lcom/sunia/HTREnginev2/sqi;

    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/rqi;->e:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/sqi;->r(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/rqi;->e:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sqi;->r(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object p0

    new-instance p1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {p1, p3, p4, p5, p2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Lorg/apache/xerces/dom/DOMInputImpl;

    invoke-direct {p1}, Lorg/apache/xerces/dom/DOMInputImpl;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/ls/LSInput;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/w3c/dom/ls/LSInput;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    invoke-direct {p1, p0}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
