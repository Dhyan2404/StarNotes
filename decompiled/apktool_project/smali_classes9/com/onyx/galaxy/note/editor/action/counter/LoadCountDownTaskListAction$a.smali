.class public final Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserCounterProvider$default(Lcom/onyx/android/sdk/replicator/KSyncBundle;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/counter/provider/CounterProvider;->queryTasks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/LoadCountDownTaskListAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
