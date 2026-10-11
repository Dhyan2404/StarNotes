.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "linkBean",
        "m",
        "n",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V",
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
.field public h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    return-void
.end method

.method public static final synthetic access$goto(Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1494f

    if-eq v1, v2, :cond_4

    const v2, 0x24a7f2

    if-eq v1, v2, :cond_2

    const v2, 0x6202c11b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DOCUMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->n(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    goto :goto_0

    :cond_2
    const-string v1, "NOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/HitTestLinkNoteEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->h:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoShapeLinkAction;->m(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->preAppendUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "addFlags(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getDocBean()Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getName(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appResourceDataFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->openFile$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
