.class public final Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->f:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;->access$getAddPen$p(Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/common/events/ShowPenBoxEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/penbox/ActivatePenBoxViewAction;)V

    return-void
.end method
