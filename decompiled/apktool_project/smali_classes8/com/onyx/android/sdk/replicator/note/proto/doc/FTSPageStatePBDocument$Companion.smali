.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFTSPageStatePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2,2:73\n1549#2:75\n1620#2,3:76\n*S KotlinDebug\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n*L\n41#1:73,2\n58#1:75\n58#1:76,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion;",
        "",
        "()V",
        "fromProtoList",
        "",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStateListProto;",
        "revisionId",
        "",
        "toProtoList",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFTSPageStatePBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1855#2,2:73\n1549#2:75\n1620#2,3:76\n*S KotlinDebug\n*F\n+ 1 FTSPageStatePBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion\n*L\n41#1:73,2\n58#1:75\n58#1:76,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSPageStatePBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "revisionId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;->getProtoList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    new-instance v1, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUniqueId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getPageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPageId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getType(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getLang()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLang(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setLang(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->getIndexed()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setIndexed(Z)V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->setRevisionId(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList$Builder;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setType(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setLang(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;->getIndexed()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->setIndexed(Z)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList$Builder;->addProto(Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageState;)Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSPageStateProto$FTSPageStateList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
