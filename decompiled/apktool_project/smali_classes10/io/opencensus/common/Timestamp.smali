.class public abstract Lio/opencensus/common/Timestamp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/opencensus/common/Timestamp;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJ)J
    .locals 0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, p2, p3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lio/opencensus/common/Timestamp;->a(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(JJ)Lio/opencensus/common/Timestamp;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Lio/opencensus/common/Timestamp;->a(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Lcom/sunia/HTREnginev2/lin;->a(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, v0, v1}, Lio/opencensus/common/Timestamp;->b(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p0, p1, p2}, Lio/opencensus/common/Timestamp;->create(JI)Lio/opencensus/common/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static create(JI)Lio/opencensus/common/Timestamp;
    .locals 2

    const-wide v0, -0x4979cb9e00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x4979cb9e00L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    if-ltz p2, :cond_1

    const v0, 0x3b9ac9ff

    if-gt p2, v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/lk;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/lk;-><init>(JI)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'nanos\' is greater than maximum (999999999): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'nanos\' is less than zero: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'seconds\' is greater than maximum (315576000000): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'seconds\' is less than minimum (-315576000000): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static fromMillis(J)Lio/opencensus/common/Timestamp;
    .locals 4

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lio/opencensus/common/Timestamp;->a(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v0, v1}, Lio/opencensus/common/Timestamp;->b(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-long p0, p0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {v2, v3, p0}, Lio/opencensus/common/Timestamp;->create(JI)Lio/opencensus/common/Timestamp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDuration(Lio/opencensus/common/Duration;)Lio/opencensus/common/Timestamp;
    .locals 4

    invoke-virtual {p1}, Lio/opencensus/common/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/opencensus/common/Duration;->getNanos()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/opencensus/common/Timestamp;->d(JJ)Lio/opencensus/common/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public addNanos(J)Lio/opencensus/common/Timestamp;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/opencensus/common/Timestamp;->d(JJ)Lio/opencensus/common/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Lio/opencensus/common/Timestamp;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/lin;->b(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/sunia/HTREnginev2/lin;->b(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/opencensus/common/Timestamp;

    invoke-virtual {p0, p1}, Lio/opencensus/common/Timestamp;->compareTo(Lio/opencensus/common/Timestamp;)I

    move-result p0

    return p0
.end method

.method public final d(JJ)Lio/opencensus/common/Timestamp;
    .locals 4

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/lin;->a(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Lcom/sunia/HTREnginev2/lin;->a(JJ)J

    move-result-wide p1

    rem-long/2addr p3, v0

    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Lio/opencensus/common/Timestamp;->c(JJ)Lio/opencensus/common/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public abstract getNanos()I
.end method

.method public abstract getSeconds()J
.end method

.method public subtractTimestamp(Lio/opencensus/common/Timestamp;)Lio/opencensus/common/Duration;
    .locals 6

    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p0

    invoke-virtual {p1}, Lio/opencensus/common/Timestamp;->getNanos()I

    move-result p1

    sub-int/2addr p0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/32 v2, 0x3b9aca00

    const-wide/16 v4, 0x1

    if-gez p1, :cond_0

    if-lez p0, :cond_0

    add-long/2addr v0, v4

    int-to-long p0, p0

    sub-long/2addr p0, v2

    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    if-gez p0, :cond_1

    sub-long/2addr v0, v4

    int-to-long p0, p0

    add-long/2addr p0, v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0, v1, p0}, Lio/opencensus/common/Duration;->create(JI)Lio/opencensus/common/Duration;

    move-result-object p0

    return-object p0
.end method
