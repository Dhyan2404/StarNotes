.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002*\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000c\u0010\n\u001a\u00020\t*\u00020\u0003H\u0002J\u0018\u0010\u000b\u001a\u00020\u0003*\u00020\t2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;",
        "toProtoList",
        "",
        "revisionId",
        "fromProtoList",
        "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;",
        "c",
        "a",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;->a(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fromProtoList$default(Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;->fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setContent(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getModeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setModeType(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setType(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getStyle()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getOrderIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setParentId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setRevisionId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;
    .locals 3

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setContent(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getModeType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setModeType(I)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setType(I)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setStyle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getOrderIndex()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setOrderIndex(F)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->setParentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->getProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;->a(Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/TagPBDocument$Companion;->c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->addAllProto(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/TagProto$TagList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
