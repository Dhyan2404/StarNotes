.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;->l(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNormalizeShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n215#2:55\n216#2:58\n1855#3,2:56\n*S KotlinDebug\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1\n*L\n40#1:55\n40#1:58\n46#1:56,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNormalizeShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n215#2:55\n216#2:58\n1855#3,2:56\n*S KotlinDebug\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1\n*L\n40#1:55\n40#1:58\n46#1:56,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1$boxMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1$boxMap$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;->e:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1$1$box$1;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1$1$box$1;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v3, v2, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->getCrossPageMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$1;->a(Ljava/util/List;)V

    return-void
.end method
