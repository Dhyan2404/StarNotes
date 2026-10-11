.class public Lcom/sunia/HTREnginev2/c2g;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field public final e:Ljava/io/InputStream;

.field public f:Lcom/sunia/HTREnginev2/fs;

.field public final g:I

.field public final h:I

.field public final i:I

.field public j:Lcom/sunia/HTREnginev2/wq;

.field public k:Lcom/sunia/HTREnginev2/wq;

.field public l:Lcom/sunia/HTREnginev2/wq;

.field public final m:Lcom/sunia/HTREnginev2/ptd;

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/ptd;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/ptd;-><init>(I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->m:Lcom/sunia/HTREnginev2/ptd;

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dictionary size must be 4096 or 8192"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of trees must be 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput p1, p0, Lcom/sunia/HTREnginev2/c2g;->g:I

    iput p2, p0, Lcom/sunia/HTREnginev2/c2g;->h:I

    iput p2, p0, Lcom/sunia/HTREnginev2/c2g;->i:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/c2g;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c2g;->e:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/c2g;->j()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/fs;->H()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->j:Lcom/sunia/HTREnginev2/wq;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/wq;->c(Lcom/sunia/HTREnginev2/fs;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/fs;->M()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/c2g;->m:Lcom/sunia/HTREnginev2/ptd;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/ptd;->d(I)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/sunia/HTREnginev2/c2g;->g:I

    const/16 v3, 0x1000

    if-ne v0, v3, :cond_4

    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    :goto_1
    iget-object v3, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v3, v0}, Lcom/sunia/HTREnginev2/fs;->I(I)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/c2g;->l:Lcom/sunia/HTREnginev2/wq;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v4, v5}, Lcom/sunia/HTREnginev2/wq;->c(Lcom/sunia/HTREnginev2/fs;)I

    move-result v4

    if-ne v4, v1, :cond_5

    if-gtz v3, :cond_5

    return-void

    :cond_5
    shl-int v0, v4, v0

    or-int/2addr v0, v3

    iget-object v1, p0, Lcom/sunia/HTREnginev2/c2g;->k:Lcom/sunia/HTREnginev2/wq;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v1, v3}, Lcom/sunia/HTREnginev2/wq;->c(Lcom/sunia/HTREnginev2/fs;)I

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sunia/HTREnginev2/fs;->I(I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_6

    return-void

    :cond_6
    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v1

    :cond_7
    iget v3, p0, Lcom/sunia/HTREnginev2/c2g;->i:I

    add-int/2addr v1, v3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c2g;->m:Lcom/sunia/HTREnginev2/ptd;

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/ptd;->b(II)V

    :goto_2
    return-void
.end method

.method public getCompressedCount()J
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/c2g;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/c2g;->n:J

    return-wide v0
.end method

.method public final j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/c2g;->e:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iget v1, p0, Lcom/sunia/HTREnginev2/c2g;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/wq;->b(Ljava/io/InputStream;I)Lcom/sunia/HTREnginev2/wq;

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/c2g;->j:Lcom/sunia/HTREnginev2/wq;

    :cond_0
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/wq;->b(Ljava/io/InputStream;I)Lcom/sunia/HTREnginev2/wq;

    move-result-object v2

    iput-object v2, p0, Lcom/sunia/HTREnginev2/c2g;->k:Lcom/sunia/HTREnginev2/wq;

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/wq;->b(Ljava/io/InputStream;I)Lcom/sunia/HTREnginev2/wq;

    move-result-object v1

    iput-object v1, p0, Lcom/sunia/HTREnginev2/c2g;->l:Lcom/sunia/HTREnginev2/wq;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/c2g;->o:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/c2g;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/sunia/HTREnginev2/fs;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/c2g;->e:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/fs;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->f:Lcom/sunia/HTREnginev2/fs;

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->m:Lcom/sunia/HTREnginev2/ptd;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ptd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/c2g;->f()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad IMPLODE stream"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/c2g;->m:Lcom/sunia/HTREnginev2/ptd;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ptd;->c()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/c2g;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sunia/HTREnginev2/c2g;->n:J

    :cond_1
    return v0
.end method
