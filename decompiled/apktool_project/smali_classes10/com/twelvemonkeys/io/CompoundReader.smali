.class public Lcom/twelvemonkeys/io/CompoundReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/Reader;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation
.end field

.field protected final finalLock:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field protected final markSupported:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/io/Reader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readers"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/Reader;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "readers cannot contain null-elements"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-boolean v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->markSupported:Z

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->nextReader()Ljava/io/Reader;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

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

    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    return-void
.end method

.method public final ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

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

    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->ensureOpen()V

    iget v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    iput v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->i:I

    iget v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iput v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->h:I

    iget-object p0, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {p0, p1}, Ljava/io/Reader;->mark(I)V

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

    iget-boolean p0, p0, Lcom/twelvemonkeys/io/CompoundReader;->markSupported:Z

    return p0
.end method

.method public final nextReader()Ljava/io/Reader;
    .locals 3

    iget v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iget-object v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/cpf;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cpf;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    iget v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    iget-object p0, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

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
    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->nextReader()Ljava/io/Reader;

    .line 5
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->read()I

    move-result p0

    monitor-exit v0

    return p0

    .line 6
    :cond_0
    iget v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

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
    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gez v1, :cond_0

    .line 11
    iget v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iget-object v3, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->nextReader()Ljava/io/Reader;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/CompoundReader;->read([CII)I

    move-result p0

    monitor-exit v0

    return p0

    .line 14
    :cond_0
    iget p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

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

    iget-object p0, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->ready()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->ensureOpen()V

    iget v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iget v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->h:I

    if-eq v1, v2, :cond_1

    :goto_0
    iget v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->h:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->nextReader()Ljava/io/Reader;

    :cond_1
    iget-object v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V

    iget v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->i:I

    iput v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

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

    iget-object v0, p0, Lcom/twelvemonkeys/io/CompoundReader;->finalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/io/CompoundReader;->e:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/twelvemonkeys/io/CompoundReader;->g:I

    iget-object v4, p0, Lcom/twelvemonkeys/io/CompoundReader;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/CompoundReader;->nextReader()Ljava/io/Reader;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/CompoundReader;->skip(J)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_0
    iget p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    int-to-long p1, p1

    add-long/2addr p1, v1

    long-to-int p1, p1

    iput p1, p0, Lcom/twelvemonkeys/io/CompoundReader;->j:I

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
