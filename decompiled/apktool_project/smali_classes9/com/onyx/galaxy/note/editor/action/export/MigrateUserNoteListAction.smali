.class public final Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMigrateUserNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n766#2:270\n857#2,2:271\n1549#2:273\n1620#2,3:274\n1864#2,3:277\n1549#2:280\n1620#2,3:281\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n*S KotlinDebug\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n*L\n97#1:270\n97#1:271,2\n102#1:273\n102#1:274,3\n103#1:277,3\n110#1:280\n110#1:281,3\n188#1:284\n188#1:285,2\n193#1:287,2\n234#1:289,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010;J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\t\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0002J\u000c\u0010\u001f\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002R\u0014\u0010#\u001a\u00020 8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010%\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R \u00101\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\"\u00103\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00070.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00100R\u0017\u00109\u001a\u0002048\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "z",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "list",
        "A",
        "noteModel",
        "t",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "copyNoteArgs",
        "w",
        "q",
        "x",
        "B",
        "r",
        "u",
        "v",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "modeList",
        "C",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "dbProviderBundle",
        "y",
        "exportUserData",
        "n",
        "",
        "g",
        "Ljava/lang/String;",
        "srcUserId",
        "h",
        "dstUserId",
        "i",
        "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
        "Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;",
        "j",
        "Lkotlin/Lazy;",
        "s",
        "()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;",
        "exportImportArgs",
        "",
        "k",
        "Ljava/util/Map;",
        "libraryIdMap",
        "l",
        "noteModelMap",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "getCopyNoteListArgs",
        "()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;",
        "copyNoteListArgs",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMigrateUserNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n766#2:270\n857#2,2:271\n1549#2:273\n1620#2,3:274\n1864#2,3:277\n1549#2:280\n1620#2,3:281\n766#2:284\n857#2,2:285\n1855#2,2:287\n1855#2,2:289\n*S KotlinDebug\n*F\n+ 1 MigrateUserNoteListAction.kt\ncom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction\n*L\n97#1:270\n97#1:271,2\n102#1:273\n102#1:274,3\n103#1:277,3\n110#1:280\n110#1:281,3\n188#1:284\n188#1:285,2\n193#1:287,2\n234#1:289,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/util/Map;
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

.field public final m:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    const-string v0, "share_user"

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportImportArgs$2;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->j:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->l:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->m:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    return-void
.end method

.method public static final synthetic access$checkDataIntegrity(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSrcUserId$p(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$importStashShapes(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->w(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    return-void
.end method

.method public static final synthetic access$migrate(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->z()V

    return-void
.end method

.method public static final synthetic access$setDstUserId$p(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->p(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->o(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->Companion:Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const-class v0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate document count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v8, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportingEvent;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v10, ""

    :cond_5
    move-object v11, p1

    check-cast v11, Ljava/util/Collection;

    invoke-static {v11}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v11

    invoke-direct {v9, v10, v5, v11}, Lcom/onyx/android/sdk/universal/editor/events/app/UserNoteListImportingEvent;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v8, v9}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v6}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    move v5, v7

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    sget-object v5, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->C(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate import src documents:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "migrate import dest documents:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-class v0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate library count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->r(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->u(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->k:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->k:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->C(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-object p1
.end method

.method public final C(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->generateUniqueName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$b;->e:Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tnj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tnj;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/unj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/unj;-><init>(Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final exportUserData()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appUserNoteDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "userData"

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->userNoteDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    invoke-static {v2, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public final getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->m:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->l:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/editor/action/export/CheckMigrateDataIntegrityAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->Companion:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    new-instance v3, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportDocument$1;

    invoke-direct {v3, p1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$exportDocument$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;->withOnce(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appDocDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->docDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p0

    invoke-static {v2, p0}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->docDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDocId(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstDocId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstParentId(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDocNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDirFilePath(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setCopyGlobalPage(Z)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->m:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->addArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    sget-object v2, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->Companion:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;

    invoke-direct {v6, v0, p0, v1}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction$importDocument$1;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;->withOnce(Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->updateNotePageNameList(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setRemovePageList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->l:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDocId(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstDocId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDstParentId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setDocNote(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setSrcDirFilePath(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->copyNoteAttr(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->l:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->v(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 7

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->thumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->importStashShape(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->s()Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ExportImportArgs;->getDirPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userData"

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->userNoteDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->appUserNoteDir(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Lonyx/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->m:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->setCopyNoteListArgs(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/bundle/DBProviderBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v2, "status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getCOMMON_BATCH_DATA_COUNT()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->g:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;->getUserNoteTreeProviderInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->getNoteProvider(Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->i:Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->y(Lcom/onyx/android/sdk/bundle/DBProviderBundle;)Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrate start models:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->exportUserData()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->B(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->A(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/export/MigrateUserNoteListAction;->x()V

    sget-object p0, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->INSTANCE:Lcom/onyx/galaxy/note/utils/LogcatGenerator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/LogcatGenerator;->logDeviceUserInfo()Ljava/lang/String;

    return-void
.end method
