.class public final Lcom/sunia/HTREnginev2/xzn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/xzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"


# instance fields
.field public e:Lorg/w3c/dom/ls/LSResourceResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xzn$a;->c(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xzn$a;->e:Lorg/w3c/dom/ls/LSResourceResolver;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1, p2, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public c(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xzn$a;->e:Lorg/w3c/dom/ls/LSResourceResolver;

    return-void
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/sunia/HTREnginev2/xzn$a;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/xzn$a;->e:Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    const-string v1, "http://www.w3.org/TR/REC-xml"

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-virtual {v3, p2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/sunia/HTREnginev2/xzn$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v3, p3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/io/StringReader;

    invoke-direct {p0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_3
    :goto_0
    invoke-virtual {v3, p1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    return-object v3

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
