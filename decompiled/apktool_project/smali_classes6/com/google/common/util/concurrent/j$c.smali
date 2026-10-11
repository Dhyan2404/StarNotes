.class public final Lcom/google/common/util/concurrent/j$c;
.super Lcom/google/common/util/concurrent/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final g:J

.field public h:D

.field public i:D

.field public j:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;JLjava/util/concurrent/TimeUnit;D)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;Lcom/google/common/util/concurrent/j$a;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/util/concurrent/j$c;->g:J

    iput-wide p5, p0, Lcom/google/common/util/concurrent/j$c;->j:D

    return-void
.end method


# virtual methods
.method public l()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j$c;->g:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/j;->d:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public m(DD)V
    .locals 8

    iget-wide p1, p0, Lcom/google/common/util/concurrent/j;->d:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j$c;->j:D

    mul-double/2addr v0, p3

    iget-wide v2, p0, Lcom/google/common/util/concurrent/j$c;->g:J

    long-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/j$c;->i:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    long-to-double v2, v2

    mul-double/2addr v2, v6

    add-double v6, p3, v0

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/j;->d:D

    sub-double/2addr v0, p3

    sub-double p3, v2, v4

    div-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/common/util/concurrent/j$c;->h:D

    const-wide/high16 p3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p3, p1, p3

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/j;->c:D

    goto :goto_1

    :cond_0
    cmpl-double p3, p1, v0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p3, p0, Lcom/google/common/util/concurrent/j;->c:D

    mul-double/2addr p3, v2

    div-double v2, p3, p1

    :goto_0
    iput-wide v2, p0, Lcom/google/common/util/concurrent/j;->c:D

    :goto_1
    return-void
.end method

.method public o(DD)J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j$c;->i:D

    sub-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/j$c;->p(D)D

    move-result-wide v2

    sub-double/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/j$c;->p(D)D

    move-result-wide p1

    add-double/2addr v2, p1

    mul-double/2addr v2, v0

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    div-double/2addr v2, p1

    double-to-long p1, v2

    sub-double/2addr p3, v0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iget-wide v0, p0, Lcom/google/common/util/concurrent/j;->e:D

    mul-double/2addr v0, p3

    double-to-long p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public final p(D)D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j;->e:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/j$c;->h:D

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method
