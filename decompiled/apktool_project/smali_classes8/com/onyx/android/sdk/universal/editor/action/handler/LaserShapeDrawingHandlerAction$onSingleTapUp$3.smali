.class final Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->C(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "request",
        "Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->cancelCurrentPath()V

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->getHitTestTapeShapeList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$b;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$c;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3$c;-><init>(Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$onSingleTapUp$3;->invoke(Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
