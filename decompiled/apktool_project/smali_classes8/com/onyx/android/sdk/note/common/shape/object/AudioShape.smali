.class public final Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0008H\u0016J\u0008\u0010\u0015\u001a\u00020\u0006H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0012\u001a\u00020\u001d8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001fR\u0016\u0010+\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u001f\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "updateShapeRect",
        "",
        "x",
        "y",
        "inSpeechRect",
        "angle",
        "Landroid/graphics/PointF;",
        "pivotPoint",
        "onPreRotate",
        "onRotate",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "type",
        "translateDistance",
        "onMirror",
        "recycle",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "b",
        "c",
        "a",
        "",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "Landroid/view/View;",
        "K",
        "Landroid/view/View;",
        "shapeView",
        "L",
        "shapeWidth",
        "M",
        "shapeHeight",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final N:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static O:I

.field public static P:I


# instance fields
.field public J:I

.field public K:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L:I

.field public M:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->N:Landroid/text/TextPaint;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/note/R$dimen;->audio_text_size:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->O:I

    sget v2, Lcom/onyx/android/sdk/note/R$dimen;->audio_text_max_width:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sput v1, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->P:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v1, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    const/16 v0, 0x17

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->J:I

    return-void
.end method

.method public static final synthetic access$getAUDIO_SHAPE_TEXT_MAX_WIDTH$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->P:I

    return v0
.end method

.method public static final synthetic access$getAUDIO_SHAPE_TEXT_SIZE$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->O:I

    return v0
.end method

.method public static final synthetic access$getTextPaint$cp()Landroid/text/TextPaint;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->N:Landroid/text/TextPaint;

    return-object v0
.end method

.method public static final synthetic access$setAUDIO_SHAPE_TEXT_MAX_WIDTH$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->P:I

    return-void
.end method

.method public static final synthetic access$setAUDIO_SHAPE_TEXT_SIZE$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->O:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p0

    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->audio_shape_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->L:I

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->audio_shape_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->M:I

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->L:I

    iget v3, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->M:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->createAudioView(Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;IIF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->K:Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->c()V

    return-void
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->L:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->M:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->union(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->J:I

    return p0
.end method

.method public final inSpeechRect(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/note/R$dimen;->audio_icon_size:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p2

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->audio_inner_padding_horizontal:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->audio_text_margin_horizontal:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMirror(Lcom/onyx/android/sdk/geometry/data/MirrorType;F)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreRotate(FLandroid/graphics/PointF;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pivotPoint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRotate(FLandroid/graphics/PointF;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pivotPoint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->recycle()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeAudioUtils;->deleteAudioTextFiles(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->isAudioResource()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->isLocalExist()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isTransparent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->K:Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;

    const-string v0, "shape rect error"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createSoundShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setAudioData(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    return-object v0
.end method

.method public updateShapeRect()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;->c()V

    :cond_0
    return-void
.end method
