.class public Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;",
        "T",
        "",
        "start",
        "executing",
        "",
        "throwable",
        "failed",
        "success",
        "",
        "abort",
        "setAbort",
        "isAbort",
        "isExecuting",
        "isFailed",
        "isFailedWithNotAbort",
        "isSuccess",
        "isStart",
        "",
        "a",
        "Ljava/lang/String;",
        "getEventSourceId",
        "()Ljava/lang/String;",
        "setEventSourceId",
        "(Ljava/lang/String;)V",
        "eventSourceId",
        "",
        "b",
        "I",
        "getActionStatus",
        "()I",
        "setActionStatus",
        "(I)V",
        "actionStatus",
        "c",
        "Ljava/lang/Throwable;",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "setThrowable",
        "(Ljava/lang/Throwable;)V",
        "d",
        "Z",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executing()Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    return-object p0
.end method

.method public failed(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->c:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getActionStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    return p0
.end method

.method public final getEventSourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->c:Ljava/lang/Throwable;

    return-object p0
.end method

.method public isAbort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->d:Z

    return p0
.end method

.method public isExecuting()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFailedWithNotAbort()Z
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->isAbort()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStart()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAbort(Z)Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->d:Z

    return-object p0
.end method

.method public final setActionStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    return-void
.end method

.method public final setEventSourceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->a:Ljava/lang/String;

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public start()Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    return-object p0
.end method

.method public success()Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;->b:I

    return-object p0
.end method
