.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->n(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->f:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$setCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$setScrollBeginX$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;F)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$setScrollBeginY$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;F)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$setScrollBeginBoxId$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getScrollBeginX$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewX(F)V

    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getCurrentScrollArgs$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getScrollBeginY$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setNewY(F)V

    :goto_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$setViewportSize$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Lcom/onyx/android/sdk/base/data/Size;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeScroll, scrollBeginX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getScrollBeginX$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scrollBeginY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$getScrollBeginY$p(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;->access$log(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$c;->a(Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;

    move-result-object p0

    return-object p0
.end method
