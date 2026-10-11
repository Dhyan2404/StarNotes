.class public Lorg/apache/http/client/entity/EntityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Ljava/io/InputStream;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/io/Serializable;

.field public f:Ljava/io/File;

.field public g:Lorg/apache/http/entity/ContentType;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/http/client/entity/EntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/http/client/entity/EntityBuilder;

    invoke-direct {v0}, Lorg/apache/http/client/entity/EntityBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->b:[B

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->c:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->d:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->e:Ljava/io/Serializable;

    iput-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->f:Ljava/io/File;

    return-void
.end method

.method public final b(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/ContentType;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->g:Lorg/apache/http/entity/ContentType;

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public build()Lorg/apache/http/HttpEntity;
    .locals 5

    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    sget-object v2, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/entity/EntityBuilder;->b(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/http/entity/ContentType;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->b:[B

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    sget-object v2, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/entity/EntityBuilder;->b(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([BLorg/apache/http/entity/ContentType;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    sget-object v2, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/entity/EntityBuilder;->b(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lorg/apache/http/client/entity/EntityBuilder;->g:Lorg/apache/http/entity/ContentType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->e:Ljava/io/Serializable;

    if-eqz v0, :cond_5

    new-instance v1, Lorg/apache/http/entity/SerializableEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/SerializableEntity;-><init>(Ljava/io/Serializable;)V

    sget-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->f:Ljava/io/File;

    if-eqz v0, :cond_6

    new-instance v1, Lorg/apache/http/entity/FileEntity;

    sget-object v2, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/entity/EntityBuilder;->b(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Lorg/apache/http/entity/ContentType;)V

    goto :goto_1

    :cond_6
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    :goto_1
    invoke-virtual {v1}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->g:Lorg/apache/http/entity/ContentType;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->i:Z

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setChunked(Z)V

    iget-boolean p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->j:Z

    if-eqz p0, :cond_8

    new-instance p0, Lorg/apache/http/client/entity/GzipCompressingEntity;

    invoke-direct {p0, v1}, Lorg/apache/http/client/entity/GzipCompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-object p0

    :cond_8
    return-object v1
.end method

.method public chunked()Lorg/apache/http/client/entity/EntityBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->i:Z

    return-object p0
.end method

.method public getBinary()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->b:[B

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Lorg/apache/http/entity/ContentType;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->g:Lorg/apache/http/entity/ContentType;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->f:Ljava/io/File;

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->d:Ljava/util/List;

    return-object p0
.end method

.method public getSerializable()Ljava/io/Serializable;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->e:Ljava/io/Serializable;

    return-object p0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public gzipCompress()Lorg/apache/http/client/entity/EntityBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/client/entity/EntityBuilder;->j:Z

    return-object p0
.end method

.method public isChunked()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->i:Z

    return p0
.end method

.method public isGzipCompress()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/http/client/entity/EntityBuilder;->j:Z

    return p0
.end method

.method public setBinary([B)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->b:[B

    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Lorg/apache/http/entity/ContentType;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->g:Lorg/apache/http/entity/ContentType;

    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->f:Ljava/io/File;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/entity/EntityBuilder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->d:Ljava/util/List;

    return-object p0
.end method

.method public varargs setParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/client/entity/EntityBuilder;->setParameters(Ljava/util/List;)Lorg/apache/http/client/entity/EntityBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSerializable(Ljava/io/Serializable;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->e:Ljava/io/Serializable;

    return-object p0
.end method

.method public setStream(Ljava/io/InputStream;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/http/client/entity/EntityBuilder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/entity/EntityBuilder;->a()V

    iput-object p1, p0, Lorg/apache/http/client/entity/EntityBuilder;->a:Ljava/lang/String;

    return-object p0
.end method
