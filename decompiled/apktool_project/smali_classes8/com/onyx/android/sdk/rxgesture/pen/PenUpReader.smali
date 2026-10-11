.class public final Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;
.super Lcom/onyx/android/sdk/rxgesture/pen/PenReader;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;",
        "Lcom/onyx/android/sdk/rxgesture/pen/PenReader;",
        "penGesture",
        "Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;",
        "(Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;)V",
        "onActivate",
        "",
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
    .locals 5

    invoke-super {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/rxgesture/pen/PenUpReader;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "pen onUp"

    invoke-virtual {v0, v1, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->penStatusBean()Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;->UP:Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/pen/PenStatusBean;->setPenStatus(Lcom/onyx/android/sdk/rxgesture/pen/PenStatus;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->postEvent()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/pen/PenReader;->getPenGesture()Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/rxgesture/pen/RxPenGesture;->setActiveReader(I)V

    return-void
.end method
