.class public Lcom/onyx/android/sdk/pen/PenPointResult;
.super Lcom/onyx/android/sdk/pen/PenResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/PenPointResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\'\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "add",
        "append",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Paint;",
        "paint",
        "",
        "draw",
        "",
        "getPointsCount",
        "",
        "Lcom/onyx/android/sdk/pen/PenPointInk;",
        "b",
        "Ljava/util/List;",
        "getPoints",
        "()Ljava/util/List;",
        "points",
        "c",
        "Lcom/onyx/android/sdk/pen/PenPointResult;",
        "lastResult",
        "Landroid/graphics/RectF;",
        "rect",
        "<init>",
        "(Ljava/util/List;Landroid/graphics/RectF;Lcom/onyx/android/sdk/pen/PenPointResult;)V",
        "Companion",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/PenPointResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Z

.field public static e:I


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pen/PenPointInk;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/pen/PenPointResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/PenPointResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/PenPointResult;->Companion:Lcom/onyx/android/sdk/pen/PenPointResult$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/pen/PenPointResult;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/RectF;Lcom/onyx/android/sdk/pen/PenPointResult;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/pen/PenPointResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pen/PenPointInk;",
            ">;",
            "Landroid/graphics/RectF;",
            "Lcom/onyx/android/sdk/pen/PenPointResult;",
            ")V"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/pen/PenResult;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    return-void
.end method

.method public static final synthetic access$getDUMP_POINTS$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/pen/PenPointResult;->d:Z

    return v0
.end method

.method public static final synthetic access$getPointCount$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/pen/PenPointResult;->e:I

    return v0
.end method

.method public static final synthetic access$setPointCount$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/android/sdk/pen/PenPointResult;->e:I

    return-void
.end method


# virtual methods
.method public append(Lcom/onyx/android/sdk/pen/PenResult;)Lcom/onyx/android/sdk/pen/PenResult;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pen/PenResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/pen/PenPointResult;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/PenResult;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/PenResult;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/PenPointResult;->getPointsCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/PenPointResult;->getPointsCount()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    new-instance p1, Lcom/onyx/android/sdk/pen/PenPointResult$append$1;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/pen/PenPointResult$append$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/RectF;ILcom/onyx/android/sdk/pen/PenPointResult;)V

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pen/PenPointInk;->getSize()F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    iget-object v2, v2, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pen/PenPointInk;->getX()F

    move-result v4

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->c:Lcom/onyx/android/sdk/pen/PenPointResult;

    iget-object v2, v2, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pen/PenPointInk;->getY()F

    move-result v5

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pen/PenPointInk;->getX()F

    move-result v6

    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pen/PenPointInk;->getY()F

    move-result v7

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/pen/PenPointInk;->getSize()F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/pen/PenPointInk;->getX()F

    move-result v7

    iget-object v4, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/pen/PenPointInk;->getY()F

    move-result v8

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/pen/PenPointInk;->getX()F

    move-result v9

    iget-object v3, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/pen/PenPointInk;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/pen/PenPointInk;->getY()F

    move-result v10

    move-object v6, p1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public final getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pen/PenPointInk;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    return-object p0
.end method

.method public getPointsCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/PenPointResult;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
