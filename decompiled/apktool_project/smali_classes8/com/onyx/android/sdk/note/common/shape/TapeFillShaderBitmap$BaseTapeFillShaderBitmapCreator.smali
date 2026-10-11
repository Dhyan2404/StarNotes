.class public abstract Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTapeFillShaderBitmapCreator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u00a2\u0006\u0004\u0008?\u0010@J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0004J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u001c\u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001c\u001a\u0004\u00082\u0010\"\"\u0004\u00083\u0010$R\u0017\u00108\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u001b\u0010>\u001a\u0002098DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\u00a8\u0006A"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillShaderBitmapCreator;",
        "",
        "color",
        "",
        "scale",
        "",
        "init",
        "Landroid/graphics/Matrix;",
        "getShaderMatrix",
        "Landroid/graphics/Bitmap;",
        "loadBitmap",
        "Landroid/graphics/RectF;",
        "getRect",
        "height",
        "setHeight",
        "",
        "isOverrideShaderSize",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;",
        "getType",
        "()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;",
        "type",
        "b",
        "F",
        "bitmapDeltaScaleX",
        "c",
        "bitmapDeltaScaleY",
        "d",
        "getStrokeLineWidth",
        "()F",
        "setStrokeLineWidth",
        "(F)V",
        "strokeLineWidth",
        "e",
        "getShaderFactor",
        "setShaderFactor",
        "shaderFactor",
        "f",
        "I",
        "getFillColor",
        "()I",
        "setFillColor",
        "(I)V",
        "fillColor",
        "g",
        "getScale",
        "setScale",
        "h",
        "Landroid/graphics/RectF;",
        "getBitmapRect",
        "()Landroid/graphics/RectF;",
        "bitmapRect",
        "Landroid/graphics/Paint;",
        "i",
        "Lkotlin/Lazy;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:F

.field public final h:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->a:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->b:F

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->c:F

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tape_shape_shorter_line_stroke_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->d:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tape_shape_size_factor:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->e:F

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->g:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator$paint$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator$paint$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->i:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getBitmapRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->f:I

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->g:F

    return p0
.end method

.method public final getShaderFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->e:F

    return p0
.end method

.method public getShaderMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->b:F

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->c:F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v0
.end method

.method public final getStrokeLineWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->d:F

    return p0
.end method

.method public getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->a:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    return-object p0
.end method

.method public init(IF)V
    .locals 1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->f:I

    iput p2, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->g:F

    iget p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->d:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->e:F

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final isOverrideShaderSize()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadBitmap()Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->b:F

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->c:F

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->f:I

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    return-void
.end method

.method public final setScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->g:F

    return-void
.end method

.method public final setShaderFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->e:F

    return-void
.end method

.method public final setStrokeLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->d:F

    return-void
.end method
