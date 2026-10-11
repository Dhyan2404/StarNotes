.class final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14;->invoke(Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
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
        "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
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
.field final synthetic $boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shapeRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/RectF;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->$shapeRectF:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
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
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->$shapeRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;-><init>(Landroid/graphics/RectF;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->invoke(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
