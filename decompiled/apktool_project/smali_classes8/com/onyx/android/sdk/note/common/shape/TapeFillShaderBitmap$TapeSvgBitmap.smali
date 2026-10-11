.class public final Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;
.super Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapeSvgBitmap"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapeFillShaderBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,259:1\n17#2,6:260\n*S KotlinDebug\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n*L\n253#1:260,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0016R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;",
        "Landroid/graphics/Matrix;",
        "getShaderMatrix",
        "",
        "color",
        "",
        "scale",
        "",
        "init",
        "height",
        "setHeight",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;",
        "j",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;",
        "args",
        "Lcom/caverock/androidsvg/SVG;",
        "k",
        "Lcom/caverock/androidsvg/SVG;",
        "svg",
        "l",
        "Landroid/graphics/Matrix;",
        "matrix",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTapeFillShaderBitmap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n+ 2 Timing.kt\nkotlin/system/TimingKt\n*L\n1#1,259:1\n17#2,6:260\n*S KotlinDebug\n*F\n+ 1 TapeFillShaderBitmap.kt\ncom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap\n*L\n253#1:260,6\n*E\n"
    }
.end annotation


# instance fields
.field public final j:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/caverock/androidsvg/SVG;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->j:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->l:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->k:Lcom/caverock/androidsvg/SVG;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "svg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getShaderResPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] render time: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->j:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;

    return-object p0
.end method

.method public getShaderMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getShaderMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->j:Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$CreateTapeFillShaderArgs;->getShaderRotateDegree()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-object v0
.end method

.method public init(IF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->init(IF)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :try_start_0
    sget-object p1, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getShaderResPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/UriUtils;->assetFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->decodeSvg(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->k:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->isOverrideShaderSize()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVG;->setDocumentWidth(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->setDocumentHeight(F)V

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getDocumentHeight()F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getPadding()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getPadding()F

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getPadding()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getPadding()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setHeight(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->setHeight(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeSvgBitmap;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method
