.class final Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->onApplyTemplateEvent(Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;)V
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
    value = "SMAP\nTemplateEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 TemplateEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1\n*L\n71#1:143,2\n*E\n"
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
        "SMAP\nTemplateEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1855#2,2:143\n*S KotlinDebug\n*F\n+ 1 TemplateEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1\n*L\n71#1:143,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $action:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

.field final synthetic $event:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->$event:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->$action:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->invoke(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->$event:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->$action:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    .line 5
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;->getApplyTemplateInfo()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->getPageIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->setPageIndex(I)V

    .line 7
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$1;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    new-instance v6, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;

    invoke-direct {v6, v3, v2, v1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;ILcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {v4, v5, v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    return-void
.end method
