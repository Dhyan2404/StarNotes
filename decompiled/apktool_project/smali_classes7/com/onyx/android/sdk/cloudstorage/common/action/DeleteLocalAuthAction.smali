.class public final Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "e",
        "Ljava/lang/String;",
        "providerTitle",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "providerTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$delete(Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;)J
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;->l()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()J
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "providerName"

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageDBBundle;->getProviderAccountProvider()Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/db/ProviderAccountProvider;->deleteProviderAccountList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
