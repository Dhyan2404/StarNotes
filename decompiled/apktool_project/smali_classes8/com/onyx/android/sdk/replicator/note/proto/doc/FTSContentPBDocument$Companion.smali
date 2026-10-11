.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFTSContentPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,81:1\n1855#2,2:82\n1549#2:84\n1620#2,2:85\n1622#2:91\n46#3:87\n50#3,2:88\n46#3:90\n*S KotlinDebug\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n*L\n46#1:82,2\n65#1:84\n65#1:85,2\n65#1:91\n73#1:87\n74#1:88,2\n75#1:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\n\u001a\u00060\u0006j\u0002`\u0007*\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion;",
        "",
        "()V",
        "fromProtoList",
        "",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentListProto;",
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
        "SMAP\nFTSContentPBDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,81:1\n1855#2,2:82\n1549#2:84\n1620#2,2:85\n1622#2:91\n46#3:87\n50#3,2:88\n46#3:90\n*S KotlinDebug\n*F\n+ 1 FTSContentPBDocument.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion\n*L\n46#1:82,2\n65#1:84\n65#1:85,2\n65#1:91\n73#1:87\n74#1:88,2\n75#1:90\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;
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
            "Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "revisionId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;->getProtoList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;

    new-instance v2, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getUniqueId(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getType(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPageUniqueId(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getContent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setContent(Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getRect()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getCharRectList()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion$fromProtoList$lambda$1$$inlined$parseList$1;

    invoke-direct {v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/FTSContentPBDocument$Companion$fromProtoList$lambda$1$$inlined$parseList$1;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_3
    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setCharRectList(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->getMatrixValues()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/onyx/android/sdk/base/data/MatrixValues;

    invoke-virtual {v3, v1, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/MatrixValues;

    if-nez v1, :cond_4

    new-instance v1, Lcom/onyx/android/sdk/base/data/MatrixValues;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, p0}, Lcom/onyx/android/sdk/base/data/MatrixValues;-><init>([FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setRevisionId(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList$Builder;

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

    check-cast v0, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setType(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setContent(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setRect(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getCharRectList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setCharRectList(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->setMatrixValues(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList$Builder;->addProto(Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContent;)Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/FTSContentProto$FTSContentList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
