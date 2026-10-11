.class public final Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadNoteDocSyncDataListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1855#2,2:43\n*S KotlinDebug\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n*L\n38#1:43,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "getSyncDataBeans",
        "",
        "printSyncDataBeans",
        "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;",
        "syncFileAction",
        "l",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "",
        "g",
        "Ljava/util/Collection;",
        "syncDataBeans",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nLoadNoteDocSyncDataListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1855#2,2:43\n*S KotlinDebug\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n*L\n38#1:43,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dataReplicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->g:Ljava/util/Collection;

    return-void
.end method

.method public static final synthetic access$getDataReplicator$p(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;)Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    return-object p0
.end method

.method public static final synthetic access$mergeSyncData(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;)Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->l(Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;)Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;

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
            "Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSyncDataBeans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->g:Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;)Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->g:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->getSyncDataBeans()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

.method public final printSyncDataBeans()V
    .locals 5

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;->g:Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need sync data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
