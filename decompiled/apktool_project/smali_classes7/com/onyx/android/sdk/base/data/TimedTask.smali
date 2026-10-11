.class public final Lcom/onyx/android/sdk/base/data/TimedTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0003R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TimedTask;",
        "",
        "time",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "(JLjava/lang/Runnable;)V",
        "consumed",
        "",
        "activate",
        "",
        "handle",
        "currentTime",
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
.field private consumed:Z

.field private final runnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final time:J


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runnable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->time:J

    iput-object p3, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->consumed:Z

    return-void
.end method

.method public final handle(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->consumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->time:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->consumed:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/TimedTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
