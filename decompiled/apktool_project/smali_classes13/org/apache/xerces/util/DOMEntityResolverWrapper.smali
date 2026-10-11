.class public Lorg/apache/xerces/util/DOMEntityResolverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# static fields
.field public static final e:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field public static final f:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


# instance fields
.field protected fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;


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

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {p1}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "http://www.w3.org/TR/REC-xml"

    return-object p0
.end method

.method public getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    return-object p0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->a(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface/range {v0 .. v5}, Lorg/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v5, p1, v0, v1}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v5, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v5, v2}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_3
    :goto_1
    invoke-virtual {v5, v4}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    return-object v5

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    return-void
.end method
