.class public Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    }
.end annotation


# instance fields
.field public final e:Ljava/io/PushbackInputStream;

.field public final f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    if-eqz p1, :cond_8

    .line 4
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    new-array p1, v2, [B

    .line 5
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v6, :cond_3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_2

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_1

    aget-byte v9, p1, v7

    if-ne v9, v4, :cond_1

    aget-byte v9, p1, v6

    if-nez v9, :cond_1

    aget-byte v9, p1, v8

    if-nez v9, :cond_1

    .line 6
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    aget-byte v2, p1, v7

    if-nez v2, :cond_2

    aget-byte v2, p1, v6

    if-ne v2, v4, :cond_2

    aget-byte v2, p1, v8

    if-ne v2, v5, :cond_2

    .line 7
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_2
    aget-byte v2, p1, v0

    const/16 v8, -0x11

    if-ne v2, v8, :cond_3

    aget-byte v2, p1, v7

    const/16 v8, -0x45

    if-ne v2, v8, :cond_3

    aget-byte v2, p1, v6

    const/16 v6, -0x41

    if-ne v2, v6, :cond_3

    .line 8
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_3
    aget-byte v2, p1, v0

    if-ne v2, v5, :cond_4

    aget-byte v6, p1, v7

    if-ne v6, v4, :cond_4

    .line 9
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    aget-byte v2, p1, v7

    if-ne v2, v5, :cond_5

    .line 10
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    goto :goto_1

    .line 11
    :cond_5
    :goto_0
    sget-object v2, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    :goto_1
    if-lez v3, :cond_6

    .line 12
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    :cond_7
    return-void

    .line 14
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "invalid input stream: null is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public final getBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    .line 2
    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    .line 4
    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    .line 6
    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    iget-object p0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final declared-synchronized skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->f:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iget-object v0, v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->e:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
