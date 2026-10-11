.class public final Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;",
        "",
        "()V",
        "createPdfShape",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "drawableId",
        "",
        "sdk-note_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createPdfShape$default(Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;IILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget p3, Lcom/onyx/android/sdk/note/R$drawable;->excerpt_indicator:I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;->createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;I)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "embedShapeBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createImageShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p3, v1, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getBoundingRectWithDrawable$default(Lcom/onyx/android/sdk/note/common/shape/Shape;ILandroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p3

    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    new-instance v4, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->isShowExcerptIndicator()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, p1, p3, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getTransformRectF(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->setTransformMatrix(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    return-object v0
.end method
