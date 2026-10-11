.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->q(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
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
.field final synthetic $shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

.field final synthetic $virtualPageBoxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->$virtualPageBoxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->$shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
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
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;-><init>(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->$virtualPageBoxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->$shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/QuitTransformAction;->setAddToCmdStack(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$7;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
