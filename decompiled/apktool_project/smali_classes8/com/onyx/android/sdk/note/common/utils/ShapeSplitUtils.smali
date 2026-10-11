.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;",
        "",
        "()V",
        "savePathToShape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "path",
        "Landroid/graphics/Path;",
        "shapeType",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic savePathToShape$default(Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Path;IILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x24

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;->savePathToShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Path;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final savePathToShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Path;I)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    cmpg-float v4, v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_1

    invoke-virtual {p0, v3, p2, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    aget v5, p2, v0

    aget v6, p2, v6

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->createTouchPoint(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v5, "null point"

    new-array v6, v0, [Ljava/lang/Object;

    const-class v7, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v4, v7, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    if-gt p0, v6, :cond_2

    return-object v5

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShape(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clear()V

    invoke-interface {p0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    return-object p0
.end method
