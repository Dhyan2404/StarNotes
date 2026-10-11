.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n1855#2,2:115\n1855#2,2:117\n1855#2,2:119\n1855#2,2:121\n1855#2:123\n1855#2,2:124\n1855#2,2:126\n1856#2:128\n*S KotlinDebug\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n*L\n29#1:113,2\n51#1:115,2\n67#1:117,2\n74#1:119,2\n82#1:121,2\n86#1:123\n93#1:124,2\n97#1:126,2\n86#1:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000eH\u0002R\"\u0010\u0018\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        "pbDataContext",
        "",
        "collectDataToPBFromDB",
        "saveDataToDB",
        "collectDataExportToFile",
        "copyPBToDB",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "exportNoteArgs",
        "",
        "",
        "docTagMap",
        "b",
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
        "SMAP\nDocTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1855#2,2:113\n1855#2,2:115\n1855#2,2:117\n1855#2,2:119\n1855#2,2:121\n1855#2:123\n1855#2,2:124\n1855#2,2:126\n1856#2:128\n*S KotlinDebug\n*F\n+ 1 DocTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData\n*L\n29#1:113,2\n51#1:115,2\n67#1:117,2\n74#1:119,2\n82#1:121,2\n86#1:123\n93#1:124,2\n97#1:126,2\n86#1:128\n*E\n"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->createTagQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    const-string v1, "revisionId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getPageIdList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-static {p0, v1, p2}, Lcom/onyx/android/sdk/replicator/note/db/NotePageTagProviderKt;->loadPageTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getTagId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagById(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 4
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
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->getExportNoteArgsList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    invoke-virtual {p0, p1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;->b(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getDocTagList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exportToNote count: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public collectDataToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;->a(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setRevisionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getDocTagList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", save template model to pb count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public copyPBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 9
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
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getDocTagList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getExportTagMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getArgsList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagById(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getExportTagMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    if-eqz v8, :cond_6

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTagIdList(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNoteList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyPBDataToDB count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;->a:I

    return p0
.end method

.method public saveDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getDocTagList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->saveExportedTagList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/DocTagPBData;->a:I

    return-void
.end method
