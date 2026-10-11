.class public Lcom/fasterxml/uuid/UUIDTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:J = 0x1b21dd213814000L

.field public static final h:I = 0x2710

.field public static final i:J = 0x2710L

.field public static final j:J = 0x64L

.field public static final k:I = 0x32


# instance fields
.field protected final _clock:Lcom/fasterxml/uuid/UUIDClock;

.field protected final _random:Ljava/util/Random;

.field protected final _syncer:Lcom/fasterxml/uuid/TimestampSynchronizer;

.field public final a:Lcom/fasterxml/uuid/impl/LoggerFacade;

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:I


# direct methods
.method public constructor <init>(Ljava/util/Random;Lcom/fasterxml/uuid/TimestampSynchronizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/uuid/UUIDClock;

    invoke-direct {v0}, Lcom/fasterxml/uuid/UUIDClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/uuid/UUIDTimer;-><init>(Ljava/util/Random;Lcom/fasterxml/uuid/TimestampSynchronizer;Lcom/fasterxml/uuid/UUIDClock;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Lcom/fasterxml/uuid/TimestampSynchronizer;Lcom/fasterxml/uuid/UUIDClock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/uuid/impl/LoggerFacade;->getLogger(Ljava/lang/Class;)Lcom/fasterxml/uuid/impl/LoggerFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->a:Lcom/fasterxml/uuid/impl/LoggerFacade;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->c:J

    .line 5
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    const-wide v2, 0x7fffffffffffffffL

    .line 6
    iput-wide v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->e:J

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    .line 8
    iput-object p1, p0, Lcom/fasterxml/uuid/UUIDTimer;->_random:Ljava/util/Random;

    .line 9
    iput-object p2, p0, Lcom/fasterxml/uuid/UUIDTimer;->_syncer:Lcom/fasterxml/uuid/TimestampSynchronizer;

    .line 10
    iput-object p3, p0, Lcom/fasterxml/uuid/UUIDTimer;->_clock:Lcom/fasterxml/uuid/UUIDClock;

    .line 11
    invoke-virtual {p0, p1}, Lcom/fasterxml/uuid/UUIDTimer;->a(Ljava/util/Random;)V

    .line 12
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->c:J

    .line 13
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lcom/fasterxml/uuid/TimestampSynchronizer;->initialize()J

    move-result-wide p1

    .line 15
    iget-wide v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    .line 16
    iput-wide p1, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    .line 17
    :cond_0
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->e:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Random;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/uuid/UUIDTimer;->b:I

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    return-void
.end method

.method public final getAndSetTimestamp([B)V
    .locals 4

    invoke-virtual {p0}, Lcom/fasterxml/uuid/UUIDTimer;->getTimestamp()J

    move-result-wide v0

    iget p0, p0, Lcom/fasterxml/uuid/UUIDTimer;->b:I

    int-to-byte v2, p0

    const/16 v3, 0x8

    aput-byte v2, p1, v3

    shr-int/2addr p0, v3

    int-to-byte p0, p0

    const/16 v2, 0x9

    aput-byte p0, p1, v2

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    long-to-int p0, v2

    long-to-int v0, v0

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, p1, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, p1, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, p1, v2

    const/4 v1, 0x5

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    ushr-int/lit8 p0, v0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, p1, v1

    ushr-int/lit8 p0, v0, 0x10

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, p1, v1

    ushr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, p1, v1

    const/4 p0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    return-void
.end method

.method public getClockSequence()I
    .locals 1

    iget p0, p0, Lcom/fasterxml/uuid/UUIDTimer;->b:I

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public declared-synchronized getTimestamp()J
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->_clock:Lcom/fasterxml/uuid/UUIDClock;

    invoke-virtual {v0}, Lcom/fasterxml/uuid/UUIDClock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->a:Lcom/fasterxml/uuid/impl/LoggerFacade;

    const-string v3, "System time going backwards! (got value %d, last %d)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/fasterxml/uuid/UUIDTimer;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/fasterxml/uuid/impl/LoggerFacade;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->c:J

    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_2

    :cond_1
    :goto_0
    move-wide v0, v2

    goto :goto_1

    :cond_2
    sub-long v4, v2, v0

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/fasterxml/uuid/UUIDTimer;->a:Lcom/fasterxml/uuid/impl/LoggerFacade;

    const-string v7, "Timestamp over-run: need to reinitialize random sequence"

    invoke-virtual {v6, v7}, Lcom/fasterxml/uuid/impl/LoggerFacade;->warn(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fasterxml/uuid/UUIDTimer;->_random:Ljava/util/Random;

    invoke-virtual {p0, v6}, Lcom/fasterxml/uuid/UUIDTimer;->a(Ljava/util/Random;)V

    const-wide/16 v6, 0x64

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/fasterxml/uuid/UUIDTimer;->slowDown(JJ)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    :goto_1
    iput-wide v0, p0, Lcom/fasterxml/uuid/UUIDTimer;->d:J

    iget-object v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->_syncer:Lcom/fasterxml/uuid/TimestampSynchronizer;

    if-eqz v2, :cond_4

    iget-wide v3, p0, Lcom/fasterxml/uuid/UUIDTimer;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_4

    :try_start_1
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/uuid/TimestampSynchronizer;->update(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->e:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to synchronize timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide v2, 0x1b21dd213814000L

    add-long/2addr v0, v2

    iget v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/uuid/UUIDTimer;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public slowDown(JJ)V
    .locals 7

    const-wide/16 v0, 0x64

    div-long/2addr p3, v0

    const-wide/16 v0, 0x2

    cmp-long v2, p3, v0

    const-wide/16 v3, 0x1

    if-gez v2, :cond_0

    move-wide v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0xa

    cmp-long v2, p3, v5

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x258

    cmp-long p3, p3, v0

    if-gez p3, :cond_2

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5

    :goto_0
    iget-object p0, p0, Lcom/fasterxml/uuid/UUIDTimer;->a:Lcom/fasterxml/uuid/impl/LoggerFacade;

    const-string p3, "Need to wait for %d milliseconds; virtual clock advanced too far in the future"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/uuid/impl/LoggerFacade;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    add-long/2addr p1, v0

    const/4 p0, 0x0

    :goto_1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p0, p0, 0x1

    const/16 p3, 0x32

    if-le p0, p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    cmp-long p3, p3, p1

    if-ltz p3, :cond_4

    :goto_2
    return-void

    :cond_4
    move-wide v0, v3

    goto :goto_1
.end method
