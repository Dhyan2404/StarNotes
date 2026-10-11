.class public Lcom/twelvemonkeys/io/StringArrayReader;
.super Ljava/io/StringReader;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/StringReader;

.field public f:[Ljava/lang/String;

.field protected final finalLock:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->nextReader()Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/StringReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    iget-object p0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/io/StringReader;->close()V

    return-void
.end method

.method public final ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->ensureOpen()V

    iget v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    iput v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->i:I

    iget v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iput v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->h:I

    iget-object p0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {p0, p1}, Ljava/io/StringReader;->mark(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Read limit < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final nextReader()Ljava/io/Reader;
    .locals 4

    iget v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/cpf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cpf;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/StringReader;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    aget-object v0, v1, v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    iget-object p0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    return-object p0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/StringReader;->read()I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->nextReader()Ljava/io/Reader;

    .line 5
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->read()I

    move-result p0

    monitor-exit v0

    return p0

    .line 6
    :cond_0
    iget v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    .line 7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/StringReader;->read([CII)I

    move-result v1

    if-gez v1, :cond_0

    .line 11
    iget v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->nextReader()Ljava/io/Reader;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/StringArrayReader;->read([CII)I

    move-result p0

    monitor-exit v0

    return p0

    .line 14
    :cond_0
    iget p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    .line 15
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/io/StringReader;->ready()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->ensureOpen()V

    iget v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iget v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->h:I

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->nextReader()Ljava/io/Reader;

    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    iget v2, p0, Lcom/twelvemonkeys/io/StringArrayReader;->i:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/StringReader;->skip(J)J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/io/StringReader;->reset()V

    :goto_0
    iget v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->i:I

    iput v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/StringArrayReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->e:Ljava/io/StringReader;

    invoke-virtual {v1, p1, p2}, Ljava/io/StringReader;->skip(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/twelvemonkeys/io/StringArrayReader;->g:I

    iget-object v4, p0, Lcom/twelvemonkeys/io/StringArrayReader;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/StringArrayReader;->nextReader()Ljava/io/Reader;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/StringArrayReader;->skip(J)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_0
    iget p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    int-to-long p1, p1

    add-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, p0, Lcom/twelvemonkeys/io/StringArrayReader;->j:I

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
