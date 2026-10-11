.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->w(Z)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->getShapeTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-boolean v6, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->g:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->setRedraw()Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$l;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
