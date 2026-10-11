.class public final Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;
.super Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;",
        "",
        "getCornerRadius",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "drawContent",
        "",
        "e",
        "[F",
        "hsv",
        "<init>",
        "([F)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hsv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;->e:[F

    return-void
.end method


# virtual methods
.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "canvas"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/16 v9, 0x1f4

    int-to-float v10, v9

    div-float/2addr v1, v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v9, :cond_0

    iget-object v2, v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;->e:[F

    aget v2, v2, v11

    const/4 v3, 0x1

    int-to-float v4, v3

    int-to-float v5, v12

    div-float v6, v5, v10

    sub-float v6, v4, v6

    const/4 v7, 0x3

    new-array v13, v7, [F

    aput v2, v13, v11

    const/4 v14, 0x0

    aput v14, v13, v3

    const/4 v14, 0x2

    aput v6, v13, v14

    invoke-static {v13}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v20

    new-array v7, v7, [F

    aput v2, v7, v11

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v7, v3

    aput v6, v7, v14

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    mul-float/2addr v5, v1

    add-float v2, v5, v1

    add-float v6, v2, v4

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v2

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v2, p1

    move v4, v5

    move v5, v7

    move-object v7, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
