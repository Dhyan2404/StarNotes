.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;",
        "",
        "()V",
        "fromProto",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;",
        "Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;",
        "toProto",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ExtraInfoPBDocument$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromProto(Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;)Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->getDocVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setDocVersion(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->getAppVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setAppVersionCode(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->getExportPdfPagesResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->setExportPdfPagesResult(Ljava/lang/String;)V

    return-object p0
.end method

.method public final toProto(Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->getDocVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->setDocVersion(I)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/db/BaseModel;->Companion:Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->setUserId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->setAppVersionCode(I)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->getExportPdfPagesResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/db/BaseModel$Companion;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->setExportPdfPagesResult(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/ExtraInfoProto$ExtraInfo;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
