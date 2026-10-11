.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenInitReader;
.super Lcom/onyx/android/sdk/rxgesture/pen/PenReader;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenInitReader;",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "penGesture",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V",
        "onActivate",
        "",
        "onDown",
        "data",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "sdk-rxgesture_release"
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
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onActivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->resetPenStatus()V

    return-void
.end method

.method public onDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method
