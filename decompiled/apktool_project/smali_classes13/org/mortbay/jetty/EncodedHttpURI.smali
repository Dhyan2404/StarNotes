.class public Lorg/mortbay/jetty/EncodedHttpURI;
.super Lorg/mortbay/jetty/HttpURI;
.source "SourceFile"


# instance fields
.field public y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v2, v1, p2}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->e:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Lorg/mortbay/util/URIUtil;->decodePath([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v3, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->f:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->g:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParam()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v3, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->i:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPort()I
    .locals 3

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->g:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->h:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0xa

    invoke-static {p0, v2, v1, v0}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result p0

    return p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v3, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->e:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-int v2, v1, v0

    const/4 v3, 0x5

    const/16 v4, 0x70

    const/16 v5, 0x68

    const/16 v6, 0x74

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v7, v3, v0

    if-ne v7, v5, :cond_1

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v3, v7

    if-ne v7, v6, :cond_1

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, v3, v7

    if-ne v7, v6, :cond_1

    add-int/lit8 v7, v0, 0x3

    aget-byte v3, v3, v7

    if-ne v3, v4, :cond_1

    const-string p0, "http"

    return-object p0

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    aget-byte v3, v2, v0

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    if-ne v3, v6, :cond_2

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    const-string p0, "https"

    return-object p0

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasQuery()Z
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/HttpURI;->k:I

    iget p0, p0, Lorg/mortbay/jetty/HttpURI;->j:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpURI;->b:[B

    iget v1, p0, Lorg/mortbay/jetty/HttpURI;->d:I

    iget v2, p0, Lorg/mortbay/jetty/HttpURI;->l:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lorg/mortbay/jetty/EncodedHttpURI;->y:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpURI;->c:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 0

    invoke-virtual {p1}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mortbay/jetty/EncodedHttpURI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
