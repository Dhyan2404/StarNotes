.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;->u(Ljava/util/List;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v2, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;->access$getInvalidate$p(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setInvalidate(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-static {p1, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->f:Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction$j;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
