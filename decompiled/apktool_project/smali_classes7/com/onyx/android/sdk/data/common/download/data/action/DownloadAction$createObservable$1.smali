.class final Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;->this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;->this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->getWakeLockHolder()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;->this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
