.class public final Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004J&\u0010\u000f\u001a\u00060\rR\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;",
        "onAcquireInfinite",
        "wakeLockHolder",
        "",
        "onRelease",
        "",
        "flags",
        "",
        "tag",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "a",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$newWakeLockWithFlags(Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;Landroid/content/Context;ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const-string p1, "newWakeLock(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onAcquireInfinite(Landroid/content/Context;)Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->acquireInfiniteWakeLock(Landroid/content/Context;)V

    return-object p0
.end method

.method public final onRelease(Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->releaseWakeLock()V

    :cond_0
    return-void
.end method
