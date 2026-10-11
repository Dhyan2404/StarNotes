.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;->n()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
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
        "it",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
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
.field final synthetic $shape:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->$shape:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTransformEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->$shape:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->$shape:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->$shape:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5$2;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction$locate$5;->invoke(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateLargeMatrixShapeAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
