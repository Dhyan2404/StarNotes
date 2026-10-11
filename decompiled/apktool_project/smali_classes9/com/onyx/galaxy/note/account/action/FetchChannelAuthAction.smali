.class public final Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001a\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0005H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "Lcom/onyx/android/sdk/data/account/bean/ResultData;",
        "",
        "",
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

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;)Lcom/onyx/android/sdk/data/account/bean/ResultData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;->l()Lcom/onyx/android/sdk/data/account/bean/ResultData;

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
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction$a;-><init>(Lcom/onyx/galaxy/note/account/action/FetchChannelAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/account/bean/ResultData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    new-instance p0, Lcom/onyx/android/sdk/data/account/request/cloud/FetchChannelAuthRequest;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchChannelAuthRequest;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchChannelAuthRequest;->execute()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/ResultData;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/ResultData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/ResultData;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
