.class public final Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;->access$getUserId$p(Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCounterProvider(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;->access$getList$p(Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;->saveHistory(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/SaveCounterRecordAction;)V

    return-void
.end method
