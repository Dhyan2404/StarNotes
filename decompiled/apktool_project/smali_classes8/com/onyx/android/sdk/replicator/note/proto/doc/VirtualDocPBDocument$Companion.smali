.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument$Companion;",
        "",
        "()V",
        "toProto",
        "Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;",
        "docModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;",
        "fromProto",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualDocPBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProto(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUniqueId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getViewportId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getViewportId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setViewportId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setActualScale(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setOffsetX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getOffsetY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setOffsetY(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getCoverPageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCoverPageId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setCoverPageId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDefaultTemplate()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setDefaultTemplate(Lcom/onyx/android/sdk/data/common/data/template/TemplateData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->getDocOptions()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    if-nez p1, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->setDocOptions(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;)V

    return-object p0
.end method

.method public final toProto(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setCreatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setUpdatedAt(J)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setViewportId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getActualScale()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setActualScale(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setOffsetX(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetY()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setOffsetY(F)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getCoverPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setCoverPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDefaultTemplate()Lcom/onyx/android/sdk/data/common/data/template/TemplateData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setDefaultTemplate(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->setDocOptions(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualDoc;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
