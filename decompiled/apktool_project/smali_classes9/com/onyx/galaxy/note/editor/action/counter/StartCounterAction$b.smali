.class public final Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->access$getTaskModel$p(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->startCounter(Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;->a(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p0

    return-object p0
.end method
