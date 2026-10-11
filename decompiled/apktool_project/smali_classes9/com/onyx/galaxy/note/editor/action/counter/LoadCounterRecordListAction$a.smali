.class public final Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCounterProvider$default(Lcom/onyx/android/sdk/replicator/KSyncBundle;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;->access$isCountUp$p(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;->queryHistory(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
