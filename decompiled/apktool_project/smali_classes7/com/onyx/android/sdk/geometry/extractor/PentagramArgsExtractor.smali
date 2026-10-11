.class public final Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPentagramArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,64:1\n37#2,2:65\n*S KotlinDebug\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n*L\n53#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "outline",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "extractArgs",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-geometry_release"
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
        "SMAP\nPentagramArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,64:1\n37#2,2:65\n*S KotlinDebug\n*F\n+ 1 PentagramArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor\n*L\n53#1:65,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getR()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getR()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setHeight(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->updateCorners()V

    return-void
.end method

.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x2

    int-to-float v6, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->average(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setR(F)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v1

    const/high16 v4, 0x42580000    # 54.0f

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->degreeToRad(F)F

    move-result v4

    new-instance v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    sub-float/2addr v8, v1

    invoke-direct {v6, v7, v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float/2addr v4, v3

    sub-float/2addr v8, v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v3

    sub-float/2addr v4, v9

    invoke-direct {v7, v8, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, 0x42900000    # 72.0f

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->degreeToRad(F)F

    move-result v0

    const/4 v4, 0x0

    move v8, v4

    :goto_0
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    sget-object v9, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    int-to-float v10, v8

    mul-float/2addr v10, v0

    invoke-virtual {v9, v7, v2, v10}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v6, v2, v10}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v2, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    const v0, 0x3fc90fdb

    add-float/2addr p1, v0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setR(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateX(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateY(F)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotation(F)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p1, v5}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {p1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    new-array v1, v4, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/extractor/PentagramArgsExtractor;->a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object v0
.end method
