.class public final Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompareNoteDocSyncFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompareNoteDocSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n1855#2,2:102\n*S KotlinDebug\n*F\n+ 1 CompareNoteDocSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction\n*L\n75#1:100,2\n79#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004H\u0002J\u0016\u0010\u000b\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004H\u0002R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0017\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;",
        "getSyncDataBeans",
        "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
        "n",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "summaries",
        "l",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;",
        "dataReplicator",
        "",
        "g",
        "Ljava/util/List;",
        "syncDataBeans",
        "",
        "getDocumentId",
        "()Ljava/lang/String;",
        "documentId",
        "m",
        "syncUserId",
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
        "SMAP\nCompareNoteDocSyncFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompareNoteDocSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n1855#2,2:102\n*S KotlinDebug\n*F\n+ 1 CompareNoteDocSyncFileAction.kt\ncom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction\n*L\n75#1:100,2\n79#1:102,2\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$checkOss(Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->l(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->getDocumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossDocDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;->ossPathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->setPrefix(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->setMaxKeys(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getRxOSSManager()Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getObjectList(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getDocumentId()Ljava/lang/String;

    move-result-object p0

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

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->g:Ljava/util/List;

    return-object p0
.end method

.method public final l(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->collectCloudFileSummary(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)V

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->g:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;->makeSyncDataBean()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compare oss count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->postComparedSyncFileEvent()V

    return-object p0
.end method

.method public final m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/ShapeSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/ShapeSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/PointSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/PointSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/VirtualPagePBSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/VirtualPagePBSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/VirtualDocSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/VirtualDocSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/ResourcePBSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/ResourcePBSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceContentSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/ResourceContentSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/NoteTemplateResSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/NoteTemplateResSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/BookmarkPBSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/BookmarkPBSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/TocPBSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/TocPBSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/TemplateJsonSyncFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/replicator/file/TemplateJsonSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/file/ThumbnailSyncFile;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;->f:Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/file/ThumbnailSyncFile;-><init>(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
