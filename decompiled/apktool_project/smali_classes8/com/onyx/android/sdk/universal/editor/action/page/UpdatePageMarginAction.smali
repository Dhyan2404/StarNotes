.class public final Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0000H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "n",
        "",
        "templateResourceId",
        "",
        "m",
        "u",
        "o",
        "r",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "args",
        "t",
        "q",
        "p",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "",
        "i",
        "Ljava/util/Set;",
        "marginTemplateFiles",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V",
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
.field public final h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->i:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$collectMarginTemplateFiles(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteMarginTemplateFileByPage(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$deleteMarginTemplateFiles(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    return-object p0
.end method

.method public static final synthetic access$getMarginTemplateFiles$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->i:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$reloadBoxManager(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveMarginConfig(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->p(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveMarginTemplateJson(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->q(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scaleToPage(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showToast(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->s()Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateAndSaveTemplateJson(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->t(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    return-void
.end method

.method public static final synthetic access$updatePageMargin(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->u()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$j;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appDocPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$o;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$p;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$q;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$q;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/ReloadBoxManagerWithSettingsRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$r;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$r;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->hasMargin()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$s;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$s;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/ScaleToPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/ScaleToPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$t;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$t;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->all_page_margin_adjustments_complete:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResourceId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;->loadFromRes(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v0, v5, v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->updateMarginTemplate$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;ZILjava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->appDocPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    const-string p1, "toFile(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin$Companion;->saveToFile(Lcom/onyx/android/sdk/genericshape/GeoLayoutMargin;Ljava/io/File;)Ljava/lang/String;

    return-void
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/UpdatePageMarginRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->h:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/request/page/UpdatePageMarginRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$u;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$u;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
