.class public Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;
.super Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRectangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/RectangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\"\u0010\u001a\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;",
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
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
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
        "SMAP\nRectangleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectangleShape.kt\ncom/onyx/android/sdk/note/common/shape/graphical/RectangleShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;->J:I

    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v1
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;->J:I

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 14

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    aget v9, v0, v2

    aget v8, v0, v3

    aget v10, v0, v5

    move-object v6, v1

    move v7, v9

    move v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v6 .. v13}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v6

    if-nez v6, :cond_1

    aget v7, v0, v2

    aget v10, v0, v3

    aget v9, v0, v4

    move-object v6, v1

    move v8, v10

    move v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 7
    invoke-virtual/range {v6 .. v13}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v6

    if-nez v6, :cond_1

    aget v7, v0, v2

    aget v10, v0, v5

    aget v9, v0, v4

    move-object v6, v1

    move v8, v10

    move v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 8
    invoke-virtual/range {v6 .. v13}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v6

    if-nez v6, :cond_1

    aget v9, v0, v4

    aget v8, v0, v3

    aget v10, v0, v5

    move-object v6, v1

    move v7, v9

    move v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 9
    invoke-virtual/range {v6 .. v13}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public hitTest(FFFF)Z
    .locals 19

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v6, 0x4

    aput v1, v0, v6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v7, 0x5

    aput v1, v0, v7

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v8, 0x6

    aput v1, v0, v8

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 19
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    aget v11, v0, v2

    aget v12, v0, v3

    aget v13, v0, v4

    aget v14, v0, v5

    move-object v10, v1

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v10

    if-nez v10, :cond_1

    aget v11, v0, v4

    aget v12, v0, v5

    aget v13, v0, v6

    aget v14, v0, v7

    move-object v10, v1

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    .line 20
    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v4

    if-nez v4, :cond_1

    aget v11, v0, v6

    aget v12, v0, v7

    aget v13, v0, v8

    aget v14, v0, v9

    move-object v10, v1

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    .line 21
    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v4

    if-nez v4, :cond_1

    aget v11, v0, v8

    aget v12, v0, v9

    aget v13, v0, v2

    aget v14, v0, v3

    move-object v10, v1

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    .line 22
    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public isClosedShape()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;->J:I

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

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/graphical/RectangleShape$Companion;->createPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method
