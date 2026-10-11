.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J,\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007J.\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J(\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "downPoint",
        "upPoint",
        "",
        "strokeWidth",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
        "arrowStyle",
        "",
        "Landroid/graphics/Path;",
        "getArrowsPath",
        "",
        "arrowLinePoint",
        "a",
        "px",
        "py",
        "",
        "angle",
        "arrowLen",
        "b",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "F",
            "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)[F

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p3, 0x0

    aget p3, p0, p3

    const/4 p4, 0x1

    aget p4, p0, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p4, 0x2

    aget p4, p0, p4

    const/4 v0, 0x3

    aget p0, p0, v0

    invoke-virtual {p3, p4, p0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)[F
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downPoint"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upPoint"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrowStyle"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->getArrowLenFactor()F

    move-result v5

    mul-float v5, v5, p3

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->getHalfBottomLine()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->getArrowHeight()F

    move-result v3

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v3, v6

    sub-float v0, v4, v0

    sub-float v1, v2, v1

    float-to-double v13, v3

    float-to-double v11, v5

    move-object/from16 v6, p0

    move v7, v0

    move v8, v1

    move-wide v9, v13

    move-wide v15, v11

    invoke-virtual/range {v6 .. v12}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->b(FFDD)[F

    move-result-object v3

    neg-double v9, v13

    invoke-virtual/range {v6 .. v12}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->b(FFDD)[F

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v5, 0x0

    aget v6, v3, v5

    sub-float v6, v4, v6

    aput v6, v1, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    sub-float v3, v2, v3

    aput v3, v1, v6

    aget v3, v0, v5

    sub-float/2addr v4, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    aget v0, v0, v6

    sub-float/2addr v2, v0

    const/4 v0, 0x3

    aput v2, v1, v0

    return-object v1
.end method

.method public final b(FFDD)[F
    .locals 6

    float-to-double p0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    float-to-double v2, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr p0, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr v2, p2

    add-double/2addr p0, v2

    mul-double p2, v0, v0

    mul-double v2, p0, p0

    add-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    div-double/2addr v0, p2

    mul-double/2addr v0, p5

    div-double/2addr p0, p2

    mul-double/2addr p0, p5

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    double-to-float p4, v0

    aput p4, p2, p3

    const/4 p3, 0x1

    double-to-float p0, p0

    aput p0, p2, p3

    return-object p2
.end method

.method public final getArrowsPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "F",
            "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "downPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arrowStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
