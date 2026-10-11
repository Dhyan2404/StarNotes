.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;->endErase(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidate()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;->access$eraseFinish(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a$b;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$a;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
