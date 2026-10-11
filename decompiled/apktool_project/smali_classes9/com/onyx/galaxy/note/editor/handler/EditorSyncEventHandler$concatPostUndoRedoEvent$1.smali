.class final Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->c(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $event:Ljava/lang/Object;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->$event:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActionManager()Lcom/onyx/android/sdk/base/scheduler/ActionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/scheduler/ActionManager;->execute(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1$observable$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->$event:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1$observable$1;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$concatPostUndoRedoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/a;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/a;-><init>(Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;Lio/reactivex/rxjava3/core/Observable;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method
