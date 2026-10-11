.class public final Lcom/onyx/android/sdk/base/data/TimeGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u0010\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TimeGuard;",
        "",
        "exceedDuration",
        "",
        "startTime",
        "(JJ)V",
        "check",
        "",
        "resetExceedDuration",
        "",
        "dur",
        "resetStartTime",
        "time",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private exceedDuration:J

.field private startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->exceedDuration:J

    .line 3
    iput-wide p3, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->startTime:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJ)V

    return-void
.end method

.method public static synthetic resetStartTime$default(Lcom/onyx/android/sdk/base/data/TimeGuard;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TimeGuard;->resetStartTime(J)V

    return-void
.end method


# virtual methods
.method public final check()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->exceedDuration:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetExceedDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->exceedDuration:J

    return-void
.end method

.method public final resetStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TimeGuard;->startTime:J

    return-void
.end method
