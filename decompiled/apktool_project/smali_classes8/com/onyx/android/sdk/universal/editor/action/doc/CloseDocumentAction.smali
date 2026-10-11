.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\nR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "r",
        "q",
        "",
        "h",
        "Z",
        "save",
        "i",
        "cleanContentView",
        "",
        "j",
        "Ljava/lang/String;",
        "docId",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V",
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
.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->h:Z

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->i:Z

    .line 5
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->j:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZ)V

    return-void
.end method

.method public static final synthetic access$cleanContentView(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->n()V

    return-void
.end method

.method public static final synthetic access$postResult(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->q()Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveDocument(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->r()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->o(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    return-void
.end method

.method public static synthetic m()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->p()V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->Companion:Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpAllProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final p()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/bundle/DBProviderBundle;->Companion:Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getDbProviderBundle()Lcom/onyx/android/sdk/bundle/DBProviderBundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;->dumpDocProviderInfo$default(Lcom/onyx/android/sdk/bundle/DBProviderBundle$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/dvd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dvd;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/evd;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/evd;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearDisplay()V

    return-void
.end method

.method public final q()Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAutoBackupEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final r()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;->h:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
