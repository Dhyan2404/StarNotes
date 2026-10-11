.class public final Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1549#2:35\n1620#2,3:36\n*S KotlinDebug\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n*L\n10#1:31\n10#1:32,3\n11#1:35\n11#1:36,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;",
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
        "SMAP\nCircleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1549#2:35\n1620#2,3:36\n*S KotlinDebug\n*F\n+ 1 CircleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor\n*L\n10#1:31\n10#1:32,3\n11#1:35\n11#1:36,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;

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
    .locals 5
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

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float v1, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v3, v2, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->averageDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F

    move-result p1

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setR(F)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRx(F)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRy(F)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/extractor/CircleArgsExtractor;->a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object v2
.end method
