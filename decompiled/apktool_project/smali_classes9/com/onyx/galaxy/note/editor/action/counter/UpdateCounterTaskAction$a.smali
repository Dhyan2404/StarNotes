.class public final Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCounterProvider$default(Lcom/onyx/android/sdk/replicator/KSyncBundle;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;->access$getList$p(Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;->updateTasks(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/UpdateCounterTaskAction;)V

    return-void
.end method
