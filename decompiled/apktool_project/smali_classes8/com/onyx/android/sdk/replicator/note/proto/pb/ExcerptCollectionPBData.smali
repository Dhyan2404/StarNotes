.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExcerptCollectionPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1855#2,2:110\n1549#2:112\n1620#2,3:113\n1747#2,3:116\n1855#2:119\n1855#2,2:120\n1856#2:122\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n*L\n28#1:108,2\n41#1:110,2\n53#1:112\n53#1:113,3\n78#1:116,3\n92#1:119\n96#1:120,2\n92#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u0012\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;",
        "pbDataContext",
        "",
        "collectDataToPBFromDB",
        "saveDataToDB",
        "exportToDBFromPB",
        "collectDataExportToFile",
        "copyPBToDB",
        "copyDBToDB",
        "",
        "a",
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
        "SMAP\nExcerptCollectionPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1855#2,2:110\n1549#2:112\n1620#2,3:113\n1747#2,3:116\n1855#2:119\n1855#2,2:120\n1856#2:122\n*S KotlinDebug\n*F\n+ 1 ExcerptCollectionPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData\n*L\n28#1:108,2\n41#1:110,2\n53#1:112\n53#1:113,3\n78#1:116,3\n92#1:119\n96#1:120,2\n92#1:122\n*E\n"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;->a:I

    return-void
.end method


# virtual methods
.method public collectDataExportToFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExportNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteListArgs;->getExportNoteArgsList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-static {v0}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptQueryArgsExtKt;->loadDocExcerptCollectionQuery(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectDataExportToFile to pb count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public collectDataToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDataContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptQueryArgsExtKt;->loadEmptyRevisionIdExcerptCollectionQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getRevisionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setRevisionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectDataToPBFromDB to pb count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public copyDBToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 7
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getArgsList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object v4

    invoke-static {v3}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptQueryArgsExtKt;->loadExcerptCollectionListByQuoteIdQuery(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    sget-object v6, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteDocId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteShapeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteShapeId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->resetRevisionId()V

    goto :goto_1

    :cond_1
    check-cast v3, Ljava/util/Collection;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->saveExcerptCollectionList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyDBToDB count: "

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
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceDocId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceShapeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceShapeId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteDocId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteShapeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteShapeId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteShapeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteShapeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    if-eqz v5, :cond_3

    move v3, v7

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->resetRevisionId()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->saveExcerptCollectionList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyPBToDB count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getCopyNoteListArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceDocId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceShapeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceShapeId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteDocId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getQuoteShapeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteListArgs;->getDstShapeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteShapeId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;->saveDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;->a:I

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->saveExportedExcerptCollectionList(Ljava/util/List;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/ExcerptCollectionPBData;->a:I

    return-void
.end method
