.class public final Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "",
        "()V",
        "colorTheme",
        "",
        "getColorTheme",
        "()I",
        "setColorTheme",
        "(I)V",
        "contentPageId",
        "",
        "getContentPageId",
        "()Ljava/lang/String;",
        "setContentPageId",
        "(Ljava/lang/String;)V",
        "contentType",
        "getContentType",
        "setContentType",
        "geoContent",
        "getGeoContent",
        "setGeoContent",
        "relativePath",
        "getRelativePath",
        "setRelativePath",
        "resourceId",
        "getResourceId",
        "setResourceId",
        "sizeFormat",
        "getSizeFormat",
        "setSizeFormat",
        "uniqueId",
        "getUniqueId",
        "setUniqueId",
        "sameContent",
        "",
        "other",
        "Companion",
        "sdk-data_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private colorTheme:I

.field private contentPageId:Ljava/lang/String;
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

.field private relativePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sizeFormat:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->Companion:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->geoContent:Ljava/lang/String;

    const-string v1, "geo_layout"

    iput-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->relativePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentPageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->resourceId:Ljava/lang/String;

    const-string v0, "A4"

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sizeFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getColorTheme()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->colorTheme:I

    return p0
.end method

.method public final getContentPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentPageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getGeoContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->geoContent:Ljava/lang/String;

    return-object p0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSizeFormat()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sizeFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final sameContent(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->geoContent:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->geoContent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentType:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentType:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->relativePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->relativePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentPageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentPageId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->resourceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->resourceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sizeFormat:Ljava/lang/String;

    iget-object v2, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sizeFormat:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->colorTheme:I

    iget p1, p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->colorTheme:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setColorTheme(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->colorTheme:I

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentPageId:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->contentType:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->geoContent:Ljava/lang/String;

    return-void
.end method

.method public final setRelativePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->relativePath:Ljava/lang/String;

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setSizeFormat(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sizeFormat:Ljava/lang/String;

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->uniqueId:Ljava/lang/String;

    return-void
.end method
