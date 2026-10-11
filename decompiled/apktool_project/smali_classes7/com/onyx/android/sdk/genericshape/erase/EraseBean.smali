.class public final Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n37#3,2:70\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n*L\n60#1:66\n60#1:67,3\n61#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0012J\u0006\u0010\u0013\u001a\u00020\u0007J\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u0015\u001a\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
        "",
        "()V",
        "erasePoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "eraseRadius",
        "",
        "isAreaErase",
        "",
        "()Z",
        "setAreaErase",
        "(Z)V",
        "targetShapeMatrix",
        "Landroid/graphics/Matrix;",
        "getErasePath",
        "Landroid/graphics/Path;",
        "getErasePoints",
        "",
        "getEraseRadius",
        "getTargetShapeMatrix",
        "setErasePoints",
        "setEraseRadius",
        "setTargetShapeMatrix",
        "sdk-genericshape_overseasRelease"
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
        "SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n37#3,2:70\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/genericshape/erase/EraseBean\n*L\n60#1:66\n60#1:67,3\n61#1:70,2\n*E\n"
    }
.end annotation


# instance fields
.field private erasePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eraseRadius:F

.field private isAreaErase:Z

.field private targetShapeMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->eraseRadius:F

    return-void
.end method


# virtual methods
.method public final getErasePath()Landroid/graphics/Path;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->erasePoints:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    :cond_0
    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->isAreaErase:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->asPath(Ljava/util/List;Z)Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->getEraseRadius()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/graphics/Path;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Path;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Path;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concat([Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getErasePoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->erasePoints:Ljava/util/List;

    return-object p0
.end method

.method public final getEraseRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->eraseRadius:F

    return p0
.end method

.method public final getTargetShapeMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->targetShapeMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final isAreaErase()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->isAreaErase:Z

    return p0
.end method

.method public final setAreaErase(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->isAreaErase:Z

    return-void
.end method

.method public final setErasePoints(Ljava/util/List;)Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->erasePoints:Ljava/util/List;

    return-object p0
.end method

.method public final setEraseRadius(F)Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->eraseRadius:F

    return-object p0
.end method

.method public final setTargetShapeMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/EraseBean;->targetShapeMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method
