.class public final Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCloudStorageStatus(Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;)Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;->l()Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction$a;->e:Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction$b;-><init>(Lcom/onyx/galaxy/note/settings/action/GetCloudStorageStatusAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;
    .locals 0

    new-instance p0, Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/request/GetCloudStorageStatusRequest;->execute()Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;

    move-result-object p0

    return-object p0
.end method
