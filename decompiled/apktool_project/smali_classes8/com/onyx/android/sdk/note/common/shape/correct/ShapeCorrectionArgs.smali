.class public final Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00080\u00101R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R4\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b0\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R4\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b0\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "getShape",
        "()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "setShape",
        "(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V",
        "shape",
        "",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "b",
        "Ljava/util/List;",
        "getAlignedPairs",
        "()Ljava/util/List;",
        "setAlignedPairs",
        "(Ljava/util/List;)V",
        "alignedPairs",
        "c",
        "getParalleledPairs",
        "setParalleledPairs",
        "paralleledPairs",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "d",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "getTransformAction",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "setTransformAction",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V",
        "transformAction",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "e",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTransformPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setTransformPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "transformPoint",
        "Landroid/graphics/Matrix;",
        "f",
        "Landroid/graphics/Matrix;",
        "getRenderMatrix",
        "()Landroid/graphics/Matrix;",
        "setRenderMatrix",
        "(Landroid/graphics/Matrix;)V",
        "renderMatrix",
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


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->a:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->c:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->f:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final getAlignedPairs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getParalleledPairs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->c:Ljava/util/List;

    return-object p0
.end method

.method public final getRenderMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->f:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->a:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-object p0
.end method

.method public final getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0
.end method

.method public final getTransformPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final setAlignedPairs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->b:Ljava/util/List;

    return-void
.end method

.method public final setParalleledPairs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->c:Ljava/util/List;

    return-void
.end method

.method public final setRenderMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->f:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setShape(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->a:Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    return-void
.end method

.method public final setTransformAction(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->d:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-void
.end method

.method public final setTransformPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->e:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
