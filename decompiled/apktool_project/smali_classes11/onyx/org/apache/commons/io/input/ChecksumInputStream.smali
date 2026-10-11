.class public final Lonyx/org/apache/commons/io/input/ChecksumInputStream;
.super Lonyx/org/apache/commons/io/input/CountingInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
    }
.end annotation


# instance fields
.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJ)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v0, p1, p2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    iput-wide p5, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->g:J

    .line 4
    iput-wide p3, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJLonyx/org/apache/commons/io/input/ChecksumInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lonyx/org/apache/commons/io/input/ChecksumInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJ)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ChecksumInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized afterRead(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/input/CountingInputStream;->afterRead(I)V

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_1
    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->f:J

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->f()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Checksum verification failed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/util/zip/Checksum;
    .locals 0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast p0, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {p0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    return-object p0
.end method

.method public getRemaining()J
    .locals 4

    iget-wide v0, p0, Lonyx/org/apache/commons/io/input/ChecksumInputStream;->g:J

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
