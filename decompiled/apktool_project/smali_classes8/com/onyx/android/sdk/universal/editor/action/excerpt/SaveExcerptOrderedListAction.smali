.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "l",
        "",
        "h",
        "Ljava/util/List;",
        "excerptInfoBeanList",
        "",
        "i",
        "Ljava/util/Set;",
        "changeList",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "excerptInfoBeanList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->h:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->i:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getChangeList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->i:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$reorder(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->l()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->h:Ljava/util/List;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/OrderListUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$reorder$list$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$reorder$list$1;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$reorder$list$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction$reorder$list$2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->reorderIndexChecked(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->i:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorder: update list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->i:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveExcerptOrderedListAction;->i:Ljava/util/Set;

    return-object p0
.end method
