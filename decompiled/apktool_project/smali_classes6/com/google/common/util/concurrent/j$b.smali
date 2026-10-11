.class public final Lcom/google/common/util/concurrent/j$b;
.super Lcom/google/common/util/concurrent/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final g:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;D)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;Lcom/google/common/util/concurrent/j$a;)V

    iput-wide p2, p0, Lcom/google/common/util/concurrent/j$b;->g:D

    return-void
.end method


# virtual methods
.method public l()D
    .locals 2

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j;->e:D

    return-wide v0
.end method

.method public m(DD)V
    .locals 3

    iget-wide p3, p0, Lcom/google/common/util/concurrent/j;->d:D

    iget-wide v0, p0, Lcom/google/common/util/concurrent/j$b;->g:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/j;->d:D

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p1, p3, p1

    if-nez p1, :cond_0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/j;->c:D

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x0

    cmpl-double v2, p3, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/google/common/util/concurrent/j;->c:D

    mul-double/2addr p1, v0

    div-double/2addr p1, p3

    :goto_0
    iput-wide p1, p0, Lcom/google/common/util/concurrent/j;->c:D

    :goto_1
    return-void
.end method

.method public o(DD)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method
