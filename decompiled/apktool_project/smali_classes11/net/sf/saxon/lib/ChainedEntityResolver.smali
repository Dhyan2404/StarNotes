.class public Lnet/sf/saxon/lib/ChainedEntityResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# instance fields
.field public final e:Lorg/xml/sax/EntityResolver;

.field public final f:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>(Lorg/xml/sax/EntityResolver;Lorg/xml/sax/EntityResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->e:Lorg/xml/sax/EntityResolver;

    iput-object p2, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->f:Lorg/xml/sax/EntityResolver;

    return-void
.end method


# virtual methods
.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->e:Lorg/xml/sax/EntityResolver;

    instance-of v1, v0, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/EntityResolver2;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->f:Lorg/xml/sax/EntityResolver;

    instance-of v1, p0, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/EntityResolver2;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :cond_1
    return-object v0
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
    iget-object v0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->e:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->f:Lorg/xml/sax/EntityResolver;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->e:Lorg/xml/sax/EntityResolver;

    instance-of v1, v0, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p4}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/lib/ChainedEntityResolver;->f:Lorg/xml/sax/EntityResolver;

    instance-of v0, p0, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lorg/xml/sax/ext/EntityResolver2;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p0, p2, p4}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method
