.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserNoteFolderPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1603#2,9:68\n1855#2:77\n1856#2:79\n1612#2:80\n1603#2,9:81\n1855#2:90\n1856#2:92\n1612#2:93\n766#2:94\n857#2,2:95\n1#3:78\n1#3:91\n*S KotlinDebug\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n*L\n33#1:68,9\n33#1:77\n33#1:79\n33#1:80\n52#1:81,9\n52#1:90\n52#1:92\n52#1:93\n53#1:94\n53#1:95,2\n33#1:78\n52#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        "pbDataContext",
        "",
        "collectDataExportToFile",
        "copyPBToDB",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "a",
        "",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "<init>",
        "()V",
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
        "SMAP\nUserNoteFolderPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1603#2,9:68\n1855#2:77\n1856#2:79\n1612#2:80\n1603#2,9:81\n1855#2:90\n1856#2:92\n1612#2:93\n766#2:94\n857#2,2:95\n1#3:78\n1#3:91\n*S KotlinDebug\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n*L\n33#1:68,9\n33#1:77\n33#1:79\n33#1:80\n52#1:81,9\n52#1:90\n52#1:92\n52#1:93\n53#1:94\n53#1:95,2\n33#1:78\n52#1:91\n*E\n"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;-><init>()V

    const/16 v0, 0x13

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExportNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->getExportAllFolder()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;->a()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadNoteModelTree(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteFolderList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public copyPBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getCopyAllFolder()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/data/Tree;->Companion:Lcom/onyx/android/sdk/base/data/Tree$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteFolderList()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData$copyPBToDB$tree$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData$copyPBToDB$tree$1;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData$copyPBToDB$tree$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData$copyPBToDB$tree$2;

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/data/Tree$Companion;->create(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNoteList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;->a:I

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;->a:I

    return-void
.end method
