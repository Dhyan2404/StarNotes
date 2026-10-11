.class public final Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/base/data/Tree<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapNoteListToTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n*S KotlinDebug\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n*L\n31#1:75,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001d\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000bR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "execute",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "a",
        "tree",
        "",
        "b",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "",
        "Ljava/util/List;",
        "noteModelList",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V",
        "sdk-note_overseasRelease"
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
        "SMAP\nMapNoteListToTreeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n*S KotlinDebug\n*F\n+ 1 MapNoteListToTreeRequest.kt\ncom/onyx/android/sdk/note/request/MapNoteListToTreeRequest\n*L\n31#1:75,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string v0, "noteProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteModelList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->a:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 6

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "association"

    const-string v5, "associationType"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nestedInExpression(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    new-array v2, v1, [Lcom/couchbase/lite/Ordering;

    const-string v4, "orderIndex"

    invoke-virtual {v0, v4, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setVarargOrdering([Lcom/couchbase/lite/Ordering;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/Tree;->Companion:Lcom/onyx/android/sdk/base/data/Tree$Companion;

    sget-object v0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest$logTree$1;->INSTANCE:Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest$logTree$1;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/data/Tree$Companion;->log(Lcom/onyx/android/sdk/base/data/Tree;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public execute()Lcom/onyx/android/sdk/base/data/Tree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->a:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->a()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadNoteModelTree(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/Tree;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    .line 6
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/onyx/android/sdk/base/data/Tree;->addToChildren(Ljava/lang/Object;I)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v4, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest$execute$1$foundTree$1;

    invoke-direct {v4, v3}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest$execute$1$foundTree$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/data/Tree;->findChild(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/data/Tree;->addToChildren(Lcom/onyx/android/sdk/base/data/Tree;)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->b(Lcom/onyx/android/sdk/base/data/Tree;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/MapNoteListToTreeRequest;->execute()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    return-object p0
.end method
