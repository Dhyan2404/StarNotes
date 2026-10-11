.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->merge(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getCrossPageShapeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->addShapeList(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getCrossPageShapeMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;->getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "just(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$1;-><init>(Ljava/util/Map;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$2;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-direct {v3, v4, v5, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;Ljava/util/Map;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$3;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$3;-><init>(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$a;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
