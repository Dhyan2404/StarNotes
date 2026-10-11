.class public final Lcom/onyx/galaxy/note/message/action/FetchMessageAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/message/action/FetchMessageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/action/FetchMessageAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "m",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "e",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "service",
        "",
        "f",
        "I",
        "getUnreadCount",
        "()I",
        "setUnreadCount",
        "(I)V",
        "unreadCount",
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


# instance fields
.field public e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->f:I

    return-void
.end method

.method public static final synthetic access$createService(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->l()V

    return-void
.end method

.method public static final synthetic access$queryMessageCount(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/message/action/FetchMessageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$a;-><init>(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$b;-><init>(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$c;->e:Lcom/onyx/galaxy/note/message/action/FetchMessageAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchMessageAction$d;-><init>(Lcom/onyx/galaxy/note/message/action/FetchMessageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUnreadCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->f:I

    return p0
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    return-void
.end method

.method public final m()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    if-nez v1, :cond_0

    const-string v1, "service"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/onyx/galaxy/note/message/cloud/MessageService;->getUnreadMessageCount()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/message/data/MessageCountData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/data/MessageCountData;->getCount()I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->f:I

    return-void
.end method

.method public final setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/message/action/FetchMessageAction;->f:I

    return-void
.end method
