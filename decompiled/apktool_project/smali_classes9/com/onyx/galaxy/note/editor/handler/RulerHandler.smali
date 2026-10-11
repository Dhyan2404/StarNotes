.class public final Lcom/onyx/galaxy/note/editor/handler/RulerHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRulerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n256#2,2:274\n256#2,2:276\n254#2:278\n254#2:279\n1#3:280\n*S KotlinDebug\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n*L\n122#1:274,2\n134#1:276,2\n150#1:278\n180#1:279\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010?\u001a\u00020>\u0012\u0006\u00102\u001a\u00020.\u00a2\u0006\u0004\u0008@\u0010AJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0012H\u0007J\u0018\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u0014H\u0016J\u0018\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0003H\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u0008\u0010!\u001a\u00020\u0003H\u0002J\u0008\u0010#\u001a\u00020\"H\u0002J\u0008\u0010$\u001a\u00020\u0003H\u0002J\u0008\u0010%\u001a\u00020\u0003H\u0002J\n\u0010\'\u001a\u0004\u0018\u00010&H\u0002J\u0008\u0010(\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0002J\u0008\u0010,\u001a\u00020\"H\u0002J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0014H\u0002R\u0017\u00102\u001a\u00020.8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010/\u001a\u0004\u00080\u00101R\u0018\u00104\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u00103R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u00109R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010<\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/RulerHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;",
        "",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;",
        "event",
        "onHideRulerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;",
        "onRulerCheckEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;",
        "onRulerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;",
        "onEditorBundleChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;",
        "onChangeTouchModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;",
        "onScaleResultEvent",
        "Landroid/view/MotionEvent;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "processTouchData",
        "processMotionEvent",
        "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;",
        "args",
        "processPenArgs",
        "e",
        "i",
        "",
        "scale",
        "k",
        "l",
        "",
        "f",
        "j",
        "h",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;",
        "d",
        "a",
        "",
        "px",
        "g",
        "c",
        "b",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "getFragment",
        "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "fragment",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;",
        "rulerView",
        "",
        "Ljava/lang/String;",
        "lastDocId",
        "",
        "J",
        "adsorbTouchGroupId",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;",
        "Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;",
        "rulerHelper",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V",
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
        "SMAP\nRulerHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n256#2,2:274\n256#2,2:276\n254#2:278\n254#2:279\n1#3:280\n*S KotlinDebug\n*F\n+ 1 RulerHandler.kt\ncom/onyx/galaxy/note/editor/handler/RulerHandler\n*L\n122#1:274,2\n134#1:276,2\n150#1:278\n180#1:279\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:J

.field public j:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->j:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getLastDocId$p(Lcom/onyx/galaxy/note/editor/handler/RulerHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getRulerStatus(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->l()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->e()V

    :goto_0
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->j:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->getRulerRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->getRulerMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->handleDownAction(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getPenViewModel$note_overseasRelease()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->isPenDrawing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->editorView(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->j()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateRulerStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateRulerMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->l()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->setRulerListener(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;)V

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    :cond_0
    return v0
.end method

.method public final g(I)I
    .locals 0

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public final getFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    return-object p0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setRulerTransformHandler(Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;)V

    return-void
.end method

.method public final i()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->d()Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getRulerMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->setRulerMatrix(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->currentDisplayScale()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->k(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateRulerStatus(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->l()V

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler$showRuler$1;-><init>(Lcom/onyx/galaxy/note/editor/handler/RulerHandler;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->setRulerListener(Lcom/onyx/galaxy/note/editor/view/ruler/RulerView$RulerListener;)V

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getHandlerManager()Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->setRulerTransformHandler(Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;)V

    return-void
.end method

.method public final k(F)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentVisibleBoxInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getPageViewInfoMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;

    if-nez v3, :cond_3

    return-void

    :cond_3
    sget-object v4, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getContentInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/16 v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfPxToMM(I)I

    move-result v2

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    mul-float/2addr v4, p1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->currentDisplayScale()F

    move-result p1

    div-float/2addr v4, p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float/2addr p1, v4

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->g(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;->updatePageSize(FF)V

    return-void
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RulerToolEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onChangeTouchModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->e()V

    :cond_0
    return-void
.end method

.method public final onEditorBundleChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;->getCurrent()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->a()V

    return-void
.end method

.method public final onHideRulerEvent(Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/HideRulerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->e()V

    return-void
.end method

.method public final onRulerCheckEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RulerCheckEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->l()V

    return-void
.end method

.method public final onRulerEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RulerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i()V

    :goto_0
    return-void
.end method

.method public final onScaleResultEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->k(F)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getRulerStatus(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->f()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->currentDisplayScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->k(F)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getDocId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->e()V

    :goto_0
    return-void
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->b(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->j:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->hitTestPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    return-object p1
.end method

.method public processPenArgs(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i:J

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getGroupId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i:J

    invoke-virtual {p2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;->isInvalidGroupId(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->clone()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getPenArgs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clearPressureAndVelocityAttr()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->setPenArgs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public processTouchData(Landroid/view/MotionEvent;Lcom/onyx/android/sdk/geometry/data/TouchData;)Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->b(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->j:Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/ruler/RulerHelper;->hitTestPoint(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getPredictPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(FF)V

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(FF)V

    move-object v1, v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/handler/RulerHandler;->i:J

    :cond_2
    return-object p2
.end method
