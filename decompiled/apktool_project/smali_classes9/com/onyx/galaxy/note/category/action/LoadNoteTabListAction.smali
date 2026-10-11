.class public final Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadNoteTabListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,117:1\n215#2,2:118\n41#3,5:120\n*S KotlinDebug\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n*L\n61#1:118,2\n79#1:120,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00102\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0002H\u0002R\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "idList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "m",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "currentNote",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoadNoteTabListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,117:1\n215#2,2:118\n41#3,5:120\n*S KotlinDebug\n*F\n+ 1 LoadNoteTabListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteTabListAction\n*L\n61#1:118,2\n79#1:120,5\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->Companion:Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentNote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->l()Ljava/util/List;

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
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNoteTabProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;->loadTabDataList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$tabDataMap$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$tabDataMap$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->Companion:Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$Companion;->toNoteTabData(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    sget-object v3, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$noteModelMap$1;->INSTANCE:Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$noteModelMap$1;

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v5, :cond_1

    invoke-static {v3, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getEncryption()Lcom/onyx/android/sdk/replicator/note/data/info/Encryption;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;->setEncrypted(Ljava/lang/Boolean;)V

    :cond_2
    invoke-static {v4, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$2;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/category/action/LoadNoteTabListAction$load$2;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-static {v4, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;->deleteTabData(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;->saveTabData(Ljava/util/List;)V

    return-object v4
.end method

.method public final m(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const-string p1, "emptyList(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const-string v3, "uniqueId"

    invoke-virtual {v2, v3, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
