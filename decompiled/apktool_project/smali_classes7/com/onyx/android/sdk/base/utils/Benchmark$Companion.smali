.class public final Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/utils/Benchmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;",
        "",
        "()V",
        "sInstance",
        "Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "getSInstance",
        "()Lcom/onyx/android/sdk/base/utils/Benchmark;",
        "shortDurationThreshold",
        "",
        "getShortDurationThreshold",
        "()J",
        "setShortDurationThreshold",
        "(J)V",
        "showShortDurationInfoLog",
        "",
        "getShowShortDurationInfoLog",
        "()Z",
        "setShowShortDurationInfoLog",
        "(Z)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/Benchmark$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSInstance()Lcom/onyx/android/sdk/base/utils/Benchmark;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/base/utils/Benchmark;->access$getSInstance$cp()Lcom/onyx/android/sdk/base/utils/Benchmark;

    move-result-object p0

    return-object p0
.end method

.method public final getShortDurationThreshold()J
    .locals 2

    invoke-static {}, Lcom/onyx/android/sdk/base/utils/Benchmark;->access$getShortDurationThreshold$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShowShortDurationInfoLog()Z
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/base/utils/Benchmark;->access$getShowShortDurationInfoLog$cp()Z

    move-result p0

    return p0
.end method

.method public final setShortDurationThreshold(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->access$setShortDurationThreshold$cp(J)V

    return-void
.end method

.method public final setShowShortDurationInfoLog(Z)V
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->access$setShowShortDurationInfoLog$cp(Z)V

    return-void
.end method
