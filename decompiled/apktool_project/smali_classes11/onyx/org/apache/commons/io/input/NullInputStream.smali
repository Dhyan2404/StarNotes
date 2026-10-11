.class public Lonyx/org/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lonyx/org/apache/commons/io/input/NullInputStream;


# instance fields
.field public final e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/NullInputStream;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/NullInputStream;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/input/NullInputStream;->INSTANCE:Lonyx/org/apache/commons/io/input/NullInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lonyx/org/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lonyx/org/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->g:J

    .line 5
    iput-wide p1, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    .line 6
    iput-boolean p3, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->k:Z

    .line 7
    iput-boolean p4, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->j:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->g:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->j:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    return-wide v0
.end method

.method public final j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z

    const-string v0, "handleEof()"

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/NullInputStream;->f(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->k:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->g:J

    int-to-long v0, p1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sunia/HTREnginev2/xwn;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->k:Z

    return p0
.end method

.method public processByte()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processBytes([BII)V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "read()"

    .line 2
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/NullInputStream;->f(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/NullInputStream;->j()I

    move-result p0

    return p0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    .line 6
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/NullInputStream;->processByte()I

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

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lonyx/org/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z

    if-eqz v0, :cond_0

    const-string p1, "read(byte[], int, int)"

    .line 9
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/NullInputStream;->f(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_0
    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/NullInputStream;->j()I

    move-result p0

    return p0

    :cond_1
    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 12
    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 13
    iput-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    return p3
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->k:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    iget-wide v4, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->h:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/sunia/HTREnginev2/xwn;->c()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->i:Z

    if-eqz v0, :cond_0

    const-string p1, "skip(long)"

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/NullInputStream;->f(Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/NullInputStream;->j()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_1
    add-long/2addr v0, p1

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    iput-wide v2, p0, Lonyx/org/apache/commons/io/input/NullInputStream;->f:J

    :cond_2
    return-wide p1
.end method
