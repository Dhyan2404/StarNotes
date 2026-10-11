.class public final Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;->e:Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/data/CounterEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getCounterWindowLocationOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->isExpand()Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;->e:Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;

    invoke-direct {v1, p1, v2, v0}, Lcom/onyx/galaxy/note/editor/event/ShowCounterEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;->a(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    return-void
.end method
