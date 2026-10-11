.class final Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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
.field final synthetic $args:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->access$checkViewportRectChanged(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewX()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetX()F

    move-result v0

    add-float v3, p1, v0

    .line 4
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getNewY()F

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->getOffsetY()F

    move-result v0

    add-float v4, p1, v0

    .line 5
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->this$0:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$scrollTo$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;

    move-result-object p0

    return-object p0
.end method
