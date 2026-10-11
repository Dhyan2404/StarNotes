.class public final Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIStateInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIStateInfo.kt\ncom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,93:1\n86#2,4:94\n*S KotlinDebug\n*F\n+ 1 UIStateInfo.kt\ncom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1\n*L\n36#1:94,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "onNext",
        "",
        "t",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUIStateInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIStateInfo.kt\ncom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,93:1\n86#2,4:94\n*S KotlinDebug\n*F\n+ 1 UIStateInfo.kt\ncom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1\n*L\n36#1:94,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;->this$0:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 2

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;->this$0:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/Debug;->getTAG()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewDragStateChanged, ensure `isDragStateIdle=true` success, old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;->this$0:Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setDragStateIdle(Z)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo$resetDragStateIdleObserver$1;->onNext(J)V

    return-void
.end method
