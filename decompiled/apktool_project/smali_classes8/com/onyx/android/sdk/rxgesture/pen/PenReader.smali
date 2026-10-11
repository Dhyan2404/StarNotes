.class public abstract Lcom/onyx/android/sdk/rxgesture/pen/PenReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "",
        "",
        "onActivate",
        "onDeactivate",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "data",
        "onTouchEvent",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;",
        "penStatusBean",
        "",
        "isUp",
        "isHolding",
        "isLongPressure",
        "onDown",
        "onMove",
        "onUp",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "e",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "getPenGesture",
        "()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "penGesture",
        "<init>",
        "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penGesture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->e:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    return-void
.end method


# virtual methods
.method public final getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->e:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    return-object p0
.end method

.method public final isHolding()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isHolding()Z

    move-result p0

    return p0
.end method

.method public final isLongPressure()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isLongPress()Z

    move-result p0

    return p0
.end method

.method public final isUp()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->isUp()Z

    move-result p0

    return p0
.end method

.method public onActivate()V
    .locals 0

    return-void
.end method

.method public onDeactivate()V
    .locals 0

    return-void
.end method

.method public onDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    :goto_0
    return-void
.end method

.method public onUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->e:Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->getPenStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object p0

    return-object p0
.end method
