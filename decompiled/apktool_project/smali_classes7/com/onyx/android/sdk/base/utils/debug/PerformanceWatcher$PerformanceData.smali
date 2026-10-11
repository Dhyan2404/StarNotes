.class public final Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerformanceData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;",
        "",
        "",
        "begin",
        "",
        "end",
        "a",
        "J",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "duration",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "b",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "getBenchmark",
        "()Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "benchmark",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Lcom/onyx/android/sdk/base/utils/Benchmark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->b:Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-void
.end method


# virtual methods
.method public final begin()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->b:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->restart()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->a:J

    return-void
.end method

.method public final end()J
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->b:Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->a:J

    return-wide v0
.end method

.method public final getBenchmark()Lcom/onyx/android/sdk/base/utils/Benchmark;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->b:Lcom/onyx/android/sdk/base/utils/Benchmark;

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->a:J

    return-wide v0
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher$PerformanceData;->a:J

    return-void
.end method
