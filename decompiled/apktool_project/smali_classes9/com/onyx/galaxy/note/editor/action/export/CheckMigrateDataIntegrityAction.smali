.class public final Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0013\u001a\u00020\t\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J \u0010\r\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eH\u0002R\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0012R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "dstNoteTreeHolder",
        "",
        "srcDocId",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "m",
        "",
        "importFailDocIds",
        "n",
        "g",
        "Ljava/lang/String;",
        "srcUserId",
        "h",
        "dstUserId",
        "",
        "i",
        "Ljava/util/Map;",
        "noteModelMap",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "j",
        "Lkotlin/Lazy;",
        "o",
        "()Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "dbProviderBundle",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V",
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
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "srcUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteModelMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->i:Ljava/util/Map;

    sget-object p1, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$dbProviderBundle$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$dbProviderBundle$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$checkDataIntegrity(Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$b;->e:Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v0, v4, v5}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->n(Ljava/util/List;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 8

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->checkNoteExist(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " migrate fail for note model not save"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-direct {p1, v3, v4, p2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v4

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->h:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;-><init>(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadEnabledVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadEnabledVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " migrate fail for page not save complete srcPageCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " + dstPageCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p2, v4, v5, v4}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->shapeCountQuery$default(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object p0

    invoke-static {v0, v4, v5, v4}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->shapeCountQuery$default(Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v4

    cmp-long p0, v6, v4

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " migrate fail for shape not save complete srcDocShapeCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " + dstDocShapeCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->noteExist(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->purgeDocData(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object p1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/Paths;->deleteDirectory(Ljava/nio/file/Path;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "migrate checkDocumentIntegrity success srcDocId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " dstDocId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final n(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserDataProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getTemplateProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getCoverProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->purgeNoteTree(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->purgeDocTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->purgeExcerptCollection()V

    sget-object p1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appUserPbDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->deleteDirectory(Ljava/nio/file/Path;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->resetTemplateOption(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->purgeCustomTemplateModel()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->purgeCustomTemplateResource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->resetCoverOption(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->purgeCustomCoverModel()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->g:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;->purgeCustomCoverResource(Ljava/lang/String;)V

    return-void
.end method

.method public final o()Lcom/onyx/android/sdk/bundle/DBProviderBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    return-object p0
.end method
