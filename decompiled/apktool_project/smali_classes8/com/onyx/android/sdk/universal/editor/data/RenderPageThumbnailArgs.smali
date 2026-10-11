.class public final Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\nH\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;",
        "",
        "boxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "renderTemplate",
        "",
        "renderTape",
        "renderPageMargin",
        "renderExcerptIndicator",
        "rotationMatrix",
        "Landroid/graphics/Matrix;",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)V",
        "getBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getRenderExcerptIndicator",
        "()Z",
        "getRenderPageMargin",
        "getRenderTape",
        "getRenderTemplate",
        "getRotationMatrix",
        "()Landroid/graphics/Matrix;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderExcerptIndicator:Z

.field private final renderPageMargin:Z

.field private final renderTape:Z

.field private final renderTemplate:Z

.field private final rotationMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotationMatrix"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 3
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    .line 6
    iput-boolean p5, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    .line 8
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v2

    move p6, v3

    move p7, v1

    move-object p8, v4

    .line 9
    invoke-direct/range {p2 .. p8}, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->copy(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    return p0
.end method

.method public final component6()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "boxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotationMatrix"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;ZZZZLandroid/graphics/Matrix;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final getRenderExcerptIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    return p0
.end method

.method public final getRenderPageMargin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    return p0
.end method

.method public final getRenderTape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    return p0
.end method

.method public final getRenderTemplate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    return p0
.end method

.method public final getRotationMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderPageThumbnailArgs(boxInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->boxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTemplate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderTape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderTape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderPageMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderPageMargin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderExcerptIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->renderExcerptIndicator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotationMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->rotationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
