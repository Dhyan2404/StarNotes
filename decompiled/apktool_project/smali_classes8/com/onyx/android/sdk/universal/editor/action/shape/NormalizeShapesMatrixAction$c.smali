.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$c;
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
    value = "SMAP\nNormalizeShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n*L\n51#1:55,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNormalizeShapesMatrixAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 NormalizeShapesMatrixAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$normalizeShapesMatrix$2\n*L\n51#1:55,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/NormalizeShapesMatrixAction$c;->a(Ljava/util/List;)V

    return-void
.end method
