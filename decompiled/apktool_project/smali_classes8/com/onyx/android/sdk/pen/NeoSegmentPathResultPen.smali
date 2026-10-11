.class public final Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;
.super Lcom/onyx/android/sdk/pen/NeoPen;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ*\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J0\u0010\u000c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J8\u0010\u000c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J*\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J(\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J$\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "prediction",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "onPenDown",
        "",
        "repaint",
        "",
        "points",
        "onPenMove",
        "onPenUp",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/RectF;",
        "b",
        "a",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "lastPoint",
        "c",
        "endPoint",
        "",
        "penHandle",
        "<init>",
        "(J)V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public b:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 24

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/onyx/android/sdk/pen/NeoPen;-><init>(J)V

    .line 3
    new-instance v12, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v12, v0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x7f

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/graphics/RectF;->union(FF)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/lite/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-static {v1, v5, v2, v3, v4}, Lcom/onyx/android/sdk/base/lite/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 4
    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "points"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 7
    invoke-virtual {p0, p3, v2}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;

    move-result-object v2

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    new-instance p1, Lcom/onyx/android/sdk/pen/PenPathResult;

    invoke-direct {p1, p3, v1}, Lcom/onyx/android/sdk/pen/PenPathResult;-><init>(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 11
    :goto_1
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 12
    new-instance v0, Lcom/onyx/android/sdk/pen/PenPathResult;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Path;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p0}, Lcom/onyx/android/sdk/pen/PenPathResult;-><init>(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 13
    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/pen/NeoSegmentPathResultPen;->b(Landroid/graphics/Path;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;

    move-result-object p0

    .line 5
    new-instance p1, Lkotlin/Pair;

    new-instance p2, Lcom/onyx/android/sdk/pen/PenPathResult;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    invoke-direct {p2, v0, p0}, Lcom/onyx/android/sdk/pen/PenPathResult;-><init>(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    const/4 p0, 0x0

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
