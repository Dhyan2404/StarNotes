.class final Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getBoxManager()Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;->access$getVirtualDocModel$p(Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getActualScale()F

    move-result v1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->scaleRange(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lorg/apache/commons/lang3/Range;

    move-result-object p1

    const-string v2, "scaleRange(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->initScaleWithinRange(FLorg/apache/commons/lang3/Range;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;->access$getVirtualDocModel$p(Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getViewportId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;->access$getVirtualDocModel$p(Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetX()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction$restoreViewport$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;->access$getVirtualDocModel$p(Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;->getOffsetY()F

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(Ljava/lang/String;FF)Z

    return-void
.end method
