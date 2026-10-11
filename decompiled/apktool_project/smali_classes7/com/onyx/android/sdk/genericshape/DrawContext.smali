.class public final Lcom/onyx/android/sdk/genericshape/DrawContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008$\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J\t\u0010+\u001a\u00020\nH\u00c6\u0003J\t\u0010,\u001a\u00020\nH\u00c6\u0003J\t\u0010-\u001a\u00020\nH\u00c6\u0003J\t\u0010.\u001a\u00020\u000eH\u00c6\u0003JY\u0010/\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u00100\u001a\u00020\n2\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u000203H\u00d6\u0001J\t\u00104\u001a\u000205H\u00d6\u0001R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u000c\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0011\"\u0004\u0008\u001f\u0010\u0013R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/DrawContext;",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "resDirs",
        "",
        "Ljava/nio/file/Path;",
        "allowUseShader",
        "",
        "needToFill",
        "ignoreCanvasSize",
        "rotation",
        "",
        "(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)V",
        "getAllowUseShader",
        "()Z",
        "setAllowUseShader",
        "(Z)V",
        "getCanvas",
        "()Landroid/graphics/Canvas;",
        "setCanvas",
        "(Landroid/graphics/Canvas;)V",
        "getIgnoreCanvasSize",
        "setIgnoreCanvasSize",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "setMatrix",
        "(Landroid/graphics/Matrix;)V",
        "getNeedToFill",
        "setNeedToFill",
        "getResDirs",
        "()Ljava/util/List;",
        "setResDirs",
        "(Ljava/util/List;)V",
        "getRotation",
        "()F",
        "setRotation",
        "(F)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdk-genericshape_overseasRelease"
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
.field private allowUseShader:Z

.field private canvas:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ignoreCanvasSize:Z

.field private matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private needToFill:Z

.field private resDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rotation:F


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;ZZZF)V"
        }
    .end annotation

    const-string v0, "resDirs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    .line 3
    iput-object p3, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    .line 4
    iput-boolean p4, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    .line 5
    iput-boolean p5, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    .line 6
    iput-boolean p6, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    .line 7
    iput p7, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/nio/file/Path;

    const-string v3, ""

    new-array v4, v2, [Ljava/lang/String;

    .line 8
    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "get(path)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v10, v0

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 9
    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/genericshape/DrawContext;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/DrawContext;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/onyx/android/sdk/genericshape/DrawContext;->copy(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)Lcom/onyx/android/sdk/genericshape/DrawContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Canvas;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public final component2()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    return p0
.end method

.method public final component7()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    return p0
.end method

.method public final copy(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)Lcom/onyx/android/sdk/genericshape/DrawContext;
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;ZZZF)",
            "Lcom/onyx/android/sdk/genericshape/DrawContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resDirs"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/DrawContext;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZF)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/genericshape/DrawContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    iget p1, p1, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAllowUseShader()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    return p0
.end method

.method public final getCanvas()Landroid/graphics/Canvas;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public final getIgnoreCanvasSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    return p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getNeedToFill()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    return p0
.end method

.method public final getResDirs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Matrix;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAllowUseShader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    return-void
.end method

.method public final setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public final setIgnoreCanvasSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setNeedToFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    return-void
.end method

.method public final setResDirs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    return-void
.end method

.method public final setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawContext(canvas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resDirs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->resDirs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowUseShader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->allowUseShader:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needToFill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->needToFill:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreCanvasSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->ignoreCanvasSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/DrawContext;->rotation:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
