.class public Lorg/apache/logging/log4j/util/Timer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/Timer$Status;
    }
.end annotation


# static fields
.field private static NANO_PER_HOUR:J = 0x0L

.field private static NANO_PER_MINUTE:J = 0x0L

.field private static NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final serialVersionUID:J = 0x7f54d452ae7198bdL


# instance fields
.field private elapsedTime:J

.field private final iterations:I

.field private final name:Ljava/lang/String;

.field private startTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lorg/apache/logging/log4j/util/Timer$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    mul-long/2addr v0, v2

    sput-wide v0, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/util/Timer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "iterations"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/logging/log4j/util/Timer$a;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/util/Timer$a;-><init>(Lorg/apache/logging/log4j/util/Timer;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    .line 4
    iput-object p1, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    .line 5
    sget-object p1, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object p1, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    iput p2, p0, Lorg/apache/logging/log4j/util/Timer;->iterations:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/util/Timer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/util/Timer;

    iget-wide v3, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    iget-wide v5, p1, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    iget-object v3, p1, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_6
    iget-object p0, p1, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz p0, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/logging/log4j/util/Timer$b;->a:[I

    iget-object v3, v0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    iget-wide v2, v0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    div-long v6, v2, v4

    rem-long/2addr v2, v4

    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    div-long v8, v2, v4

    rem-long/2addr v2, v4

    sget-wide v4, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_SECOND:J

    div-long v10, v2, v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v12, v6, v4

    const-string v13, " hours "

    const-string v14, ""

    if-lez v12, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v14

    :goto_0
    cmp-long v7, v8, v4

    const-string v15, " minutes "

    if-gtz v7, :cond_2

    if-lez v12, :cond_3

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#0"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "000000000"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, " stopped. Elapsed time: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/apache/logging/log4j/util/Timer;->iterations:I

    if-lez v3, :cond_9

    iget-wide v11, v0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    int-to-long v6, v3

    div-long/2addr v11, v6

    sget-wide v6, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_HOUR:J

    div-long v0, v11, v6

    rem-long/2addr v11, v6

    sget-wide v6, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_MINUTE:J

    div-long v4, v11, v6

    rem-long/2addr v11, v6

    sget-wide v6, Lorg/apache/logging/log4j/util/Timer;->NANO_PER_SECOND:J

    move-object v9, v2

    div-long v2, v11, v6

    rem-long/2addr v11, v6

    const-wide/16 v6, 0x0

    cmp-long v16, v0, v6

    if-lez v16, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    move-wide v0, v6

    :goto_1
    cmp-long v0, v4, v0

    if-gtz v0, :cond_5

    if-lez v16, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Average per iteration: "

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    move-object v2, v1

    const-string v0, " paused"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move-object v2, v1

    const-string v0, " started"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_2
    return-void
.end method

.method public getElapsedNanoTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    return-wide v0
.end method

.method public getElapsedTime()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lorg/apache/logging/log4j/util/Timer$Status;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    iget-object v2, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1d

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget-wide v1, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public declared-synchronized pause()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Paused:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Started:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Started:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startOrResume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    sget-object v1, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/logging/log4j/util/Timer;->elapsedTime:J

    iget-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->startTime:Ljava/lang/ThreadLocal;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/logging/log4j/util/Timer$Status;->Stopped:Lorg/apache/logging/log4j/util/Timer$Status;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Timer;->status:Lorg/apache/logging/log4j/util/Timer$Status;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/Timer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/Timer;->formatTo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
