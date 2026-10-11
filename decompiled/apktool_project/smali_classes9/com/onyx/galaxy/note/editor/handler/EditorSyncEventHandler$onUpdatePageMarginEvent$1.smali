.class final Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler;->onUpdatePageMarginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,540:1\n1855#2,2:541\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1\n*L\n319#1:541,2\n*E\n"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEditorSyncEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,540:1\n1855#2,2:541\n*S KotlinDebug\n*F\n+ 1 EditorSyncEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1\n*L\n319#1:541,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $event:Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
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
    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onUpdatePageMarginEvent$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdatePageMarginEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    return-void
.end method
