.class public final Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;->a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    return-void
.end method
