.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\n\u001a\u00020\u0003*\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;",
        "toProtoList",
        "",
        "revisionId",
        "fromProtoList",
        "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;",
        "fromProto",
        "pageModel",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;
    .locals 3

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getOrderIndex()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setOrderIndex(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setStatus(I)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSize()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setPageSize(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSizeWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setPageSizeWithMargin(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentPageSize()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setContentPageSize(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setContentType(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setContentPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setContentPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setContentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getColorTheme()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setColorTheme(I)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setMarginColor(I)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginTemplateResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setMarginTemplateResource(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginTemplateSpace()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setMarginTemplateSpace(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginTemplateResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setMarginTemplateResourceId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->setRotation(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromProto(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "revisionId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getPageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPageId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getOrderIndex()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setOrderIndex(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setStatus(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getPageSize()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setPageSize(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getPageSizeWithMargin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setPageSizeWithMargin(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getContentPageSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageSize(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getContentPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentRelativePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getContentPageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentPageId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getContentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getColorTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setColorTheme(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getMarginColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setMarginColor(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getMarginTemplateResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setMarginTemplateResource(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getMarginTemplateSpace()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setMarginTemplateSpace(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getMarginTemplateResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setMarginTemplateResourceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;->getRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRotation(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRevisionId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revisionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;->getProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;->fromProto(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;"
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

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;->a(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList$Builder;->addAllProto(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
