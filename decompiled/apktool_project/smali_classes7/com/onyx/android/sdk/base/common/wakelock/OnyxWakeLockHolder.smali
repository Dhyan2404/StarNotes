.class public final Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 22\u00020\u0001:\u00012B\u0011\u0012\u0008\u0008\u0002\u0010/\u001a\u00020\u000c\u00a2\u0006\u0004\u00080\u00101J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\"\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J*\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0006\u0010\r\u001a\u00020\u000cJ\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006R\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\t8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\t8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001bR\u001a\u0010\"\u001a\u00020\t8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0019\u001a\u0004\u0008!\u0010\u001bR\u001c\u0010\'\u001a\u0008\u0018\u00010#R\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010.\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "Landroid/content/Context;",
        "context",
        "",
        "acquireInfiniteWakeLock",
        "",
        "tag",
        "acquireWakeLock",
        "",
        "flags",
        "ms",
        "",
        "isHeld",
        "releaseWakeLock",
        "forceReleaseWakeLock",
        "dumpWakelocks",
        "a",
        "Ljava/lang/String;",
        "UNIVERSAL_TAG",
        "",
        "b",
        "J",
        "DEFAULT_ACQUIRE_TIMEOUT",
        "c",
        "I",
        "getFULL_FLAGS",
        "()I",
        "FULL_FLAGS",
        "d",
        "getON_AFTER_RELEASE",
        "ON_AFTER_RELEASE",
        "e",
        "getWAKEUP_FLAGS",
        "WAKEUP_FLAGS",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "f",
        "Landroid/os/PowerManager$WakeLock;",
        "wakeLock",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "g",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "wakeLockCounting",
        "h",
        "Z",
        "referenceCounted",
        "ref",
        "<init>",
        "(Z)V",
        "Companion",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:I

.field public volatile f:Landroid/os/PowerManager$WakeLock;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->Companion:Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onyx-framework"

    .line 3
    iput-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->a:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    .line 4
    iput-wide v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->b:J

    const/16 v0, 0x1a

    .line 5
    iput v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->c:I

    const/high16 v0, 0x20000000

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->d:I

    const v1, 0x1000001a

    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->e:I

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;-><init>(Z)V

    return-void
.end method

.method public static synthetic acquireWakeLock$default(Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;Landroid/content/Context;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->acquireWakeLock(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized acquireInfiniteWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->c:I

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->acquireWakeLock(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized acquireWakeLock(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->b:J

    long-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->acquireWakeLock(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acquireWakeLock(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->Companion:Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;

    invoke-static {v0, p1, p2, p3}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;->access$newWakeLockWithFlags(Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder$Companion;Landroid/content/Context;ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    .line 7
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3

    if-lez p4, :cond_1

    .line 9
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide p2, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->b:J

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 11
    :goto_0
    iget-boolean p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->h:Z

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->c:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->acquireWakeLock(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized dumpWakelocks(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const-string v0, " Counting unmatched!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "Wake lock released."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock in using: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " counting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized forceReleaseWakeLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFULL_FLAGS()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->c:I

    return p0
.end method

.method public final getON_AFTER_RELEASE()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->d:I

    return p0
.end method

.method public final getWAKEUP_FLAGS()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->e:I

    return p0
.end method

.method public final isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized releaseWakeLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->h:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;->f:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
