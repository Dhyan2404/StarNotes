.class public final Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p1

    new-instance v6, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->access$getCounterEntry$p(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction$c;->a(Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    return-void
.end method
