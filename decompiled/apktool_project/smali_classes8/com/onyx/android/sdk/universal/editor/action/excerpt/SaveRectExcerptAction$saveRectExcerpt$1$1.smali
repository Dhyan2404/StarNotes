.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1;->a(Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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
.field final synthetic $request:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->$request:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->$request:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getShapeList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->setShapeList(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->$request:Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageIndex(I)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction$saveRectExcerpt$1$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveRectExcerptAction;

    move-result-object p0

    return-object p0
.end method
