.class public final Lcom/onyx/android/sdk/replicator/message/MessageReplicator;
.super Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R)\u0010\u001c\u001a\u0015\u0012\u000c\u0012\n \u0018*\u0004\u0018\u00010\u00030\u00030\u0017\u00a2\u0006\u0002\u0008\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "startWithObserve",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "createCouchHolder",
        "Lcom/couchbase/lite/Collection;",
        "ensureCollection",
        "",
        "onSyncChangeFinished",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "getSyncGateway",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "w",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "args",
        "",
        "x",
        "Ljava/lang/String;",
        "getCouchName",
        "()Ljava/lang/String;",
        "couchName",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "y",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publisher",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final w:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->Companion:Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->z:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->baseReplicatorArgs()Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Lcom/onyx/android/sdk/replicator/bean/ReplicatorArgs;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->w:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    const-string v0, "MESSAGE"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->x:Ljava/lang/String;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->y:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->setSyncChannels(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-void
.end method

.method public static final synthetic access$getReplicatedMap$cp()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->z:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public createCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getMessageProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteCouchHolder(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0

    return-object p0
.end method

.method public ensureCollection()Lcom/couchbase/lite/Collection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->ensureCouchDb()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->w:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCouchName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->x:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->w:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getGateway()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    move-result-object p0

    return-object p0
.end method

.method public onSyncChangeFinished()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isSyncError()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->Companion:Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->w:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/message/MessageReplicator$Companion;->markReplicated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->y:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->isSyncError()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final startWithObserve()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->y:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->startReplicator$default(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;ILjava/lang/Object;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicator;->y:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method
