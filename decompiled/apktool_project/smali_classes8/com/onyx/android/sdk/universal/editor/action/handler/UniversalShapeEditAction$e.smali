.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->p(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->g:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->access$createAddShapesBackgroundArgs(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->t(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Landroid/graphics/RectF;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e$a;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->f:Ljava/util/List;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e$a;-><init>(Ljava/util/List;Ljava/util/Map$Entry;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->g:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e$b;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$e;->a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
