.class public final Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0012\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;",
        "",
        "info",
        "",
        "set",
        "",
        "isFinished",
        "a",
        "Z",
        "isXFinished",
        "()Z",
        "setXFinished",
        "(Z)V",
        "b",
        "isYFinished",
        "setYFinished",
        "",
        "c",
        "F",
        "getNewX",
        "()F",
        "setNewX",
        "(F)V",
        "newX",
        "d",
        "getNewY",
        "setNewY",
        "newY",
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
.field public a:Z

.field public b:Z

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->c:F

    return p0
.end method

.method public final getNewY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->d:F

    return p0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->a:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isXFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->a:Z

    return p0
.end method

.method public final isYFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->b:Z

    return p0
.end method

.method public final set(Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->a:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->a:Z

    iget-boolean v0, p1, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->b:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->b:Z

    iget v0, p1, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->c:F

    iput v0, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->c:F

    iget p1, p1, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->d:F

    iput p1, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->d:F

    return-void
.end method

.method public final setNewX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->c:F

    return-void
.end method

.method public final setNewY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->d:F

    return-void
.end method

.method public final setXFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->a:Z

    return-void
.end method

.method public final setYFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->b:Z

    return-void
.end method
