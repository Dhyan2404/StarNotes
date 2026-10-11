.class public Lorg/mortbay/io/bio/StringEndPoint;
.super Lorg/mortbay/io/bio/StreamEndPoint;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Ljava/io/ByteArrayInputStream;

.field public i:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lorg/mortbay/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v0, "UTF-8"

    .line 2
    iput-object v0, p0, Lorg/mortbay/io/bio/StringEndPoint;->g:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/io/bio/StringEndPoint;->h:Ljava/io/ByteArrayInputStream;

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/mortbay/io/bio/StringEndPoint;->i:Ljava/io/ByteArrayOutputStream;

    .line 5
    iget-object v1, p0, Lorg/mortbay/io/bio/StringEndPoint;->h:Ljava/io/ByteArrayInputStream;

    iput-object v1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    .line 6
    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/mortbay/io/bio/StringEndPoint;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lorg/mortbay/io/bio/StringEndPoint;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/io/bio/StringEndPoint;->i:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/io/bio/StringEndPoint;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lorg/mortbay/io/bio/StringEndPoint;->i:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lorg/mortbay/io/bio/StringEndPoint;->g:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasMore()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/bio/StringEndPoint;->h:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/bio/StringEndPoint;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/io/bio/StringEndPoint;->h:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lorg/mortbay/io/bio/StreamEndPoint;->e:Ljava/io/InputStream;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/mortbay/io/bio/StringEndPoint;->i:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/mortbay/io/bio/StreamEndPoint;->f:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
