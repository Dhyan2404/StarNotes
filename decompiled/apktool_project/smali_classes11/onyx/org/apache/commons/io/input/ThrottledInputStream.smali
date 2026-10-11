.class public final Lonyx/org/apache/commons/io/input/ThrottledInputStream;
.super Lonyx/org/apache/commons/io/input/CountingInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;
    }
.end annotation


# static fields
.field public static final synthetic i:Z


# instance fields
.field public final f:J

.field public final g:J

.field public h:Ljava/time/Duration;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->g:J

    .line 4
    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->h:Ljava/time/Duration;

    .line 5
    iput-wide p2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;JLonyx/org/apache/commons/io/input/ThrottledInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public static I(JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, p2

    long-to-double p2, p4

    sub-double/2addr p0, p2

    double-to-long p0, p0

    cmp-long p2, p0, v0

    if-gtz p2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->h:Ljava/time/Duration;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v2

    iput-object v2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->h:Ljava/time/Duration;

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "Thread aborted"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public beforeRead(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->H()V

    return-void
.end method

.method public final f()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v2

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final j()J
    .locals 8

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    iget-wide v2, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->g:J

    sub-long/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->I(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrottledInputStream[bytesRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->h:Ljava/time/Duration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ThrottledInputStream;->h:Ljava/time/Duration;

    return-object p0
.end method
