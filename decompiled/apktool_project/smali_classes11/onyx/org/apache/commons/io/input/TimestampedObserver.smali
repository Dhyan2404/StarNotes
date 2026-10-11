.class public Lonyx/org/apache/commons/io/input/TimestampedObserver;
.super Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;
.source "SourceFile"


# instance fields
.field public volatile a:Ljava/time/Instant;

.field public final b:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;-><init>()V

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->b:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public closed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->a:Ljava/time/Instant;

    return-void
.end method

.method public getCloseInstant()Ljava/time/Instant;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->a:Ljava/time/Instant;

    return-object p0
.end method

.method public getOpenInstant()Ljava/time/Instant;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->b:Ljava/time/Instant;

    return-object p0
.end method

.method public getOpenToCloseDuration()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->b:Ljava/time/Instant;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->a:Ljava/time/Instant;

    invoke-static {v0, p0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getOpenToNowDuration()Ljava/time/Duration;
    .locals 1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->b:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->a:Ljava/time/Instant;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimestampedObserver [openInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->b:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closeInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/TimestampedObserver;->a:Ljava/time/Instant;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
