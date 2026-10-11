.class public Lorg/apache/commons/io/input/TeeReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "SourceFile"


# instance fields
.field private final branch:Ljava/io/Writer;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeReader;-><init>(Ljava/io/Reader;Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 3
    iput-object p2, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 4
    iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    :cond_1
    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 8
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    .line 11
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    throw p0

    :cond_0
    :goto_0
    return v1
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyReader;->read([CII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 6
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return p3
.end method
