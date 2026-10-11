.class final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->X()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;",
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
        "Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;",
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
.field final synthetic $identifyRectF:Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

.field final synthetic $viewportLocation:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->$viewportLocation:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->$identifyRectF:Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;",
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
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->this$0:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->$viewportLocation:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->$identifyRectF:Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/magnifier/LocateSrcViewRectInTargetPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$6;->invoke(Lcom/onyx/android/sdk/universal/editor/action/ScaleAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
