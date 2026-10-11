.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;
.super Lcom/onyx/android/sdk/rxgesture/pen/PenReader;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "",
        "onActivate",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "data",
        "onMove",
        "onUp",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "pausePoint",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
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
.field public f:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;-><init>(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V

    return-void
.end method


# virtual methods
.method public onActivate()V
    .locals 4

    invoke-super {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pen long pressure"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->LONG_PRESS:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader;->Companion:Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/rxgesture/pen/PenLongPressReader;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/rxgesture/pen/PenMoveReader$Companion;->isMoving(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    :cond_1
    return-void
.end method

.method public onUp(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method
