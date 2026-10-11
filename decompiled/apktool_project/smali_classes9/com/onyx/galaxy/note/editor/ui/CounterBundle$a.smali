.class public final Lcom/onyx/galaxy/note/editor/ui/CounterBundle$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->onLoginAccountChangedEvent(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$a;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$a;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$a;->a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
