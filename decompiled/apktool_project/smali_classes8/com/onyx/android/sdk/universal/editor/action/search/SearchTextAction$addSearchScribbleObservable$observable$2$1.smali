.class final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2;->a(Ljava/util/Set;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "set",
        "",
        "",
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
.field final synthetic $virtualPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->$virtualPageList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->invoke(Ljava/util/Set;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "set"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getSearchProgressResult$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->getMaxSearchProgress()F

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->setMaxSearchProgress(F)V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->$virtualPageList:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$addSearchScribbleObservable$observable$2$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getSearchContext(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getVirtualPageList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
