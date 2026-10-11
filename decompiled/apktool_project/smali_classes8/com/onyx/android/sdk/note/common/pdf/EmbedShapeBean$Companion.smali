.class public final Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J8\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;",
        "",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "shapeBean",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "toShape",
        "shape",
        "fromShape",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "",
        "shapeType",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "matrix",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "createArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "lineStyle",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/onyx/android/sdk/base/data/TouchPointList;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isEraseShape(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setMatrixValues([F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setPoints(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraAttr;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final fromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->fromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object p0

    return-object p0
.end method

.method public final fromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v2

    .line 3
    new-instance v4, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 5
    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;-><init>()V

    .line 6
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShapeUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setDocumentUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setPageUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->toPdfLayerId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setLayerId(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 12
    sget-object v7, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShapeLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setBounds(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setStrokeColor(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setFillColor(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 16
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setStrokeWidth(F)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 18
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 19
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 20
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShapeType(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setShapeStatus(I)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 23
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setRenderMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    .line 24
    :cond_2
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    .line 25
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v5

    .line 26
    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v6

    move-object v1, p0

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean$Companion;->a(ILcom/onyx/android/sdk/base/data/TouchPointList;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setExtraAttr(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    .line 29
    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->setResource(Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;

    return-object v0
.end method

.method public final toShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setDocumentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeColor()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getFillColor()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getStrokeWidth()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getRichText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->access$getShapeStatus$p(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V

    :cond_0
    return-object p0
.end method
