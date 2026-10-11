.class public final Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "contentId",
        "",
        "getContentId",
        "()Ljava/lang/String;",
        "setContentId",
        "(Ljava/lang/String;)V",
        "contentPageId",
        "getContentPageId",
        "setContentPageId",
        "contentRelativePath",
        "getContentRelativePath",
        "setContentRelativePath",
        "contentType",
        "getContentType",
        "setContentType",
        "geoContent",
        "getGeoContent",
        "setGeoContent",
        "sizeFormat",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "getSizeFormat",
        "()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "setSizeFormat",
        "(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toTemplateJsonBean",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private contentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentPageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentRelativePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private geoContent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sizeFormat:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, "geo_layout"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->sizeFormat:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentRelativePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getGeoContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getSizeFormat()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->sizeFormat:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setContentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    return-void
.end method

.method public final setContentPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    return-void
.end method

.method public final setContentRelativePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setGeoContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    return-void
.end method

.method public final setSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->sizeFormat:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    return-void
.end method

.method public final toTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->setContentType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->geoContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->setGeoContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->setContentPageId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->setUniqueId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateRecentUseModel;->contentRelativePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->setRelativePath(Ljava/lang/String;)V

    return-object v0
.end method
