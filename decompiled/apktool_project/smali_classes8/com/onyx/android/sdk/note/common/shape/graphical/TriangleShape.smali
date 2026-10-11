.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;
.super Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTriangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TriangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/TriangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002R\"\u0010\u001e\u001a\u00020\u00178\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;",
        "",
        "isClosedShape",
        "",
        "x",
        "y",
        "radius",
        "hitTest",
        "x1",
        "y1",
        "x2",
        "y2",
        "Landroid/graphics/Path;",
        "getPath",
        "",
        "updateShapeRect",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "",
        "a",
        "",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTriangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TriangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/TriangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->J:I

    return-void
.end method


# virtual methods
.method public final a()[F
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    const/4 v1, 0x3

    aput p0, v0, v1

    int-to-float p0, v3

    aget v2, v0, v2

    mul-float/2addr p0, v2

    aget v2, v0, v3

    sub-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v2, 0x4

    aput p0, v0, v2

    const/4 p0, 0x5

    aget v1, v0, v1

    aput v1, v0, p0

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->a()[F

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v1
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->J:I

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->a()[F

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    const/4 v10, 0x0

    aget v3, v0, v10

    const/4 v11, 0x1

    aget v4, v0, v11

    const/4 v12, 0x2

    aget v5, v0, v12

    const/4 v13, 0x3

    aget v6, v0, v13

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    aget v3, v0, v10

    aget v4, v0, v11

    const/4 v14, 0x4

    aget v5, v0, v14

    const/4 v15, 0x5

    aget v6, v0, v15

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    aget v3, v0, v14

    aget v4, v0, v15

    aget v5, v0, v12

    aget v6, v0, v13

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v10, v11

    :cond_2
    return v10
.end method

.method public hitTest(FFFF)Z
    .locals 17

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->a()[F

    move-result-object v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    const/4 v11, 0x0

    aget v3, v0, v11

    const/4 v12, 0x1

    aget v4, v0, v12

    const/4 v13, 0x2

    aget v5, v0, v13

    const/4 v14, 0x3

    aget v6, v0, v14

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    aget v3, v0, v11

    aget v4, v0, v12

    const/4 v15, 0x4

    aget v5, v0, v15

    const/16 v16, 0x5

    aget v6, v0, v16

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    aget v3, v0, v15

    aget v4, v0, v16

    aget v5, v0, v13

    aget v6, v0, v14

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v11, v12

    :cond_2
    return v11
.end method

.method public isClosedShape()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape$Companion;->createPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public updateShapeRect()V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->a()[F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/TriangleShape;->getPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    return-void
.end method
