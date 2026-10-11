.class public Lorg/xmlresolver/sources/ResolverLSInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/io/InputStream;

.field public final d:Ljava/net/URI;

.field public final resolvedURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolvedResource;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->resolvedURI:Ljava/net/URI;

    .line 9
    invoke-virtual {p1}, Lorg/xmlresolver/ResolvedResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->c:Ljava/io/InputStream;

    .line 10
    invoke-virtual {p1}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->b:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lorg/xmlresolver/sources/ResolverLSInput;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lorg/xmlresolver/ResolvedResource;->getResolvedURI()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/sources/ResolverLSInput;->d:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/Resource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/xmlresolver/Resource;->localUri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->resolvedURI:Ljava/net/URI;

    .line 3
    invoke-virtual {p1}, Lorg/xmlresolver/Resource;->body()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->c:Ljava/io/InputStream;

    .line 4
    iput-object p2, p0, Lorg/xmlresolver/sources/ResolverLSInput;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/xmlresolver/sources/ResolverLSInput;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lorg/xmlresolver/Resource;->uri()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/sources/ResolverLSInput;->d:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->d:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public getCertifiedText()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object p0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->c:Ljava/io/InputStream;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/sources/ResolverLSInput;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set base URI on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set byte stream on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCertifiedText(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set certified text on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set character stream on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set encoding on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set public ID on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set string data on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Can\'t set system ID on resolver LSInput"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
