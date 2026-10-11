.class public final Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->access$getCounterEntry$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$f;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->access$isManualStop$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/event/CounterDoneEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;Z)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
