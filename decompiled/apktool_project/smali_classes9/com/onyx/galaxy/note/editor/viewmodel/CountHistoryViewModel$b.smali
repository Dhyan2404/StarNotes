.class public final Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->f(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterRecordAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterRecordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;->e:Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;->f:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->access$onItemDeleted(Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterRecordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel$b;->a(Lcom/onyx/galaxy/note/editor/action/counter/DeleteCounterRecordAction;)V

    return-void
.end method
