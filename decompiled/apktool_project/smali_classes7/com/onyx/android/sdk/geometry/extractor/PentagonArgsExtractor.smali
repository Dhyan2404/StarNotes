.class public final Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPentagonArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n1549#2:38\n1620#2,3:39\n37#3,2:42\n*S KotlinDebug\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n*L\n13#1:34\n13#1:35,3\n14#1:38\n14#1:39,3\n30#1:42,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "()V",
        "extractArgs",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "outline",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPentagonArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n1549#2:38\n1620#2,3:39\n37#3,2:42\n*S KotlinDebug\n*F\n+ 1 PentagonArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor\n*L\n13#1:34\n13#1:35,3\n14#1:38\n14#1:39,3\n30#1:42,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/PentagonArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 10
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

    const-string p0, "outline"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    double-to-float p0, v1

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->averageDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F

    move-result p0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    float-to-double v4, p1

    const-wide v6, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    int-to-double v8, v3

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    sget-object v6, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v1, v7, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setR(F)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setStartAngle(F)V

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    new-array p1, v2, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    return-object v3
.end method
