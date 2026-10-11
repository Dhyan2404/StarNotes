.class public final Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;
.implements Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010%\u001a\u00020#\u00a2\u0006\u0004\u0008/\u00100J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0002J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000cH\u0002J\u001c\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0014\u0010\u001e\u001a\u0006\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001f\u001a\u00020\u0003H\u0002J\u0008\u0010!\u001a\u00020 H\u0002J\u0008\u0010\"\u001a\u00020\u001bH\u0002R\u0014\u0010%\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "",
        "destroy",
        "Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;",
        "event",
        "onRegisterKeyboradHelperEvent",
        "Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;",
        "onUnregisterKeyboardHelperEvent",
        "Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;",
        "onForceCloseKeyboardEvent",
        "",
        "keyboardHeight",
        "onKeyboardOpen",
        "onKeyboardClose",
        "e",
        "lastKeyboardHeight",
        "g",
        "scrollOffset",
        "Lio/reactivex/rxjava3/core/Observable;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "old",
        "new",
        "j",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "c",
        "h",
        "d",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "b",
        "a",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
        "scribbleFragment",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "keyboardHelper",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;",
        "Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;",
        "scrollInfo",
        "",
        "J",
        "SCROLL_UP_DELAY",
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


# instance fields
.field public final e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:J


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scribbleFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance p1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->h:J

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onKeyboardClosed(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->d()V

    return-void
.end method

.method public static final synthetic access$resetToolPositionAndCalScrollOffset(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->g(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$scrollUpObservable(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->i(II)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateTextBoxViewPosition(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->j(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getTextBox$note_overseasRelease()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const-string v6, "inputTextLayout"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->animateDown$default(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;Landroid/view/View;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->removeTranslateRule(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$a;-><init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardClosedEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardClosedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->destroy(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->release()V

    :cond_2
    new-instance v1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->init(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->bindKeyboardInsetsListener(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->setOnKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->g:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    return-void
.end method

.method public final g(II)I
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const-string v2, "inputTextLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorCursorBottom()I

    move-result v0

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getLocationOnScreen(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    neg-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v1, v4, v5}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->setTranslateRule(Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p2, v1, v3, v4, v5}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->animateUp$default(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;Landroid/view/View;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f()V

    sub-int/2addr v2, p1

    sub-int/2addr v0, v2

    return v0
.end method

.method public final h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->g:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->getAfterScrollVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;->getBeforeScrollVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ScrollDownAction;

    invoke-direct {v2, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/ScrollDownAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$c;-><init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(II)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const-string v2, "inputTextLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr p1, v2

    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->copy()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v3

    int-to-float v4, p1

    int-to-float p1, p2

    neg-float v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;FFLcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->g:Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-wide v2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->h:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, p2}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$d;

    invoke-direct {p2, v0, v9}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$d;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$e;

    invoke-direct {p2, p0, v9}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$e;-><init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;Lcom/onyx/android/sdk/universal/editor/data/ScrollInfo;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$f;

    invoke-direct {p1, v1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$f;-><init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public init()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler$DefaultImpls;->init(Lcom/onyx/android/sdk/universal/editor/eventhandler/EventHandler;)V

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->getTextInputHelper()Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->setTranslateRule(Landroid/view/View;Ljava/lang/Number;Ljava/lang/Number;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v0, v4, v2, v3}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->animateUp$default(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;Landroid/view/View;ZILjava/lang/Object;)V

    float-to-int p1, p1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->normalizeExtraVerticalOffset(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->removeTranslateRule(Landroid/view/View;)V

    return-void
.end method

.method public final onForceCloseKeyboardEvent(Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ForceCloseKeyboardEvent;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public onKeyboardClose()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->c(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public onKeyboardOpen(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardOpenEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/event/TextBoxKeyboardOpenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->inputTextLayout:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    const-string v1, "inputTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->getTranslateDistance(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    if-ne v0, p1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->filterDuplicateKeyboardOpenEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->a()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->h(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$2;

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;-><init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;I)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onRegisterKeyboradHelperEvent(Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/RegisterKeyboardHelperEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->e()V

    return-void
.end method

.method public final onUnregisterKeyboardHelperEvent(Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/UnregisterKeyboardHelperEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->f:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->release()V

    return-void
.end method
