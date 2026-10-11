.class public Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0010\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000c\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "q",
        "",
        "pageId",
        "p",
        "r",
        "w",
        "s",
        "t",
        "o",
        "u",
        "v",
        "",
        "h",
        "Ljava/util/List;",
        "pageIdList",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "context",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;

    return-void
.end method

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    return-object p0
.end method

.method public static final synthetic access$getPageIdList$p(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$printRemovePagesLog(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->o(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeImpl(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePage(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePage(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->r(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePageExcerpts(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->s(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePageTags(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->t(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeToc(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveNotePage(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->v(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateCoverThumbnail(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->w()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->n(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/util/List;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove pages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$create$7;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$create$7;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$printRemovePagesLog$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$printRemovePagesLog$1;

    new-instance v2, Lcom/sunia/HTREnginev2/yjl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/yjl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$m;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$n;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$o;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$p;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$q;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$r;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$t;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$t;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/GetPageIndexFromIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$4;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$4;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$v;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$v;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePageExcerpts$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$w;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$w;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$x;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$x;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$y;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$z;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$z;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/tag/DeletePageTagModelAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/tag/DeletePageTagModelAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$a0;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/tag/DeletePageTocAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/tag/DeletePageTocAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$b0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/request/page/SaveNotePageByIdsRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$c0;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$c0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$d0;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$d0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$e0;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$e0;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
