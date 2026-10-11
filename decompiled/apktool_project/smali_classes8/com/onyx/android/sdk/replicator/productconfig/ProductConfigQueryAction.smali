.class public final Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "l",
        "",
        "e",
        "Ljava/lang/String;",
        "configType",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "f",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "g",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "replicator",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-replicator_overseasRelease"
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

.field public final f:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "configType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->e:Ljava/lang/String;

    new-instance p1, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    const-string v0, "CloudConfig"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getMessageReplicator(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->g:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    return-void
.end method

.method public static final synthetic access$loadFromLocal(Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;)Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->l()Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sync(Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->m()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->g:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction$a;-><init>(Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction$b;-><init>(Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getMessageProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getProductConfigProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider;->loadFromLocal(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Product Config not Found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->Companion:Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudConfig"

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;->replicated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
