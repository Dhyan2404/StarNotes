.class public final Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitScreenEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n1855#2,2:90\n*S KotlinDebug\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n*L\n30#1:88,2\n38#1:90,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0007H\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;",
        "event",
        "onBeforeRenderDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;",
        "onStartSplitScreenEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;",
        "splitScreenType",
        "Landroid/graphics/RectF;",
        "b",
        "c",
        "",
        "docId",
        "viewRectF",
        "Lio/reactivex/rxjava3/core/Observable;",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSplitScreenEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n1855#2,2:90\n*S KotlinDebug\n*F\n+ 1 SplitScreenEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler\n*L\n30#1:88,2\n38#1:90,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scribbleFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic access$createOpenAnotherDocObservable(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->a(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureSplitScreen(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)Landroid/graphics/RectF;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->b(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureSplitScreenOrientation(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->c(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->isEnabledSplitScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->unfocusedEditorViewHandler()Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->openAnotherDocument(Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)Landroid/graphics/RectF;
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->UP_DOWN:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;->BOTTOM:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;->RIGHT:Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->ensureEnableSpiltScreen(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getSplitScreenType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->LEFT_RIGHT:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->getSplitScreenType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->UP_DOWN:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    if-ne p1, v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getSplitScreenLayout()Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->switchSplitScreenType()V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->destroy(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getEditorViewHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    return-void
.end method

.method public final onBeforeRenderDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/BeforeRenderDocumentEvent;->getEditorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final onStartSplitScreenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
