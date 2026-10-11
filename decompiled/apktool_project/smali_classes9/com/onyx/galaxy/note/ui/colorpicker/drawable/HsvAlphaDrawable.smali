.class public final Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;
.super Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;",
        "",
        "getCornerRadius",
        "",
        "drawBorder",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;->e:[F

    return-void
.end method


# virtual methods
.method public drawBorder()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;->e:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    const/16 v0, 0xff

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;->e:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    move v4, v6

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
