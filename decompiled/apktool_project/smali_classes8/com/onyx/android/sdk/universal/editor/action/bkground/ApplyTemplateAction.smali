.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\n\u001a\u00020\tH\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0016\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "isEnabledGoToCurrentPage",
        "",
        "pageIndex",
        "gotoCurrentPage",
        "",
        "p",
        "m",
        "o",
        "q",
        "s",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;",
        "applyTemplateInfo",
        "i",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "j",
        "Z",
        "isAddCover",
        "()Z",
        "setAddCover",
        "(Z)V",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V",
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
.field public h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyTemplateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    return-void
.end method

.method public static final synthetic access$applyCoverTemplate(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyPaperTemplate(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$backupCurrentTemplate(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->p()V

    return-void
.end method

.method public static final synthetic access$modifyDocDefaultTemplate(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateNoteBundleGeoLayout(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->r(Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateRenderBackground(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->s()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic gotoCurrentPage$default(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;IILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->gotoCurrentPage(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->n(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Z)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$6;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$6;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$7;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$7;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$8;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$8;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$9;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$create$9;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    return p0
.end method

.method public final gotoCurrentPage(I)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/request/page/GotoPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;I)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$n;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isAddCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->j:Z

    return p0
.end method

.method public final isEnabledGoToCurrentPage()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyAllPaper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/AddCoverPageTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/jd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jd;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$a;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$b;

    invoke-direct {v2, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveThumbnailAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyAllPaper()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyCurrentPaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyAllPaper()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v3

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    invoke-interface {v3, v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyPagesTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    :goto_2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyAllPaper()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyDefaultPaper()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyDocDefaultTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ModifyDocDefaultTemplateAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$1;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$q;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$q;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$r;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$4;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$5;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$updateRenderBackground$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$s;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setAddCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->j:Z

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->i:I

    return-void
.end method
