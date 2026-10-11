.class public final Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\t\u00a2\u0006\u0004\u0008+\u0010,J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0006\u0010\u0005\u001a\u00020\u0003J\u0010\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020!0\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;",
        "Landroid/widget/PopupWindow;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "",
        "onGlobalLayout",
        "release",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "listener",
        "setKeyboardStateListener",
        "Landroid/view/View;",
        "rootView",
        "c",
        "b",
        "d",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "context",
        "f",
        "Landroid/view/View;",
        "anchorView",
        "",
        "g",
        "J",
        "LAYOUT_CHANGE_FILTER_TIME_MS",
        "",
        "h",
        "I",
        "maxHeight",
        "",
        "i",
        "Z",
        "isKeyboardOpen",
        "j",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "k",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "layoutChangeFilter",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;)V",
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
.field public e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:J

.field public h:I

.field public i:Z

.field public j:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->f:Landroid/view/View;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->g:J

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->k:Lcom/onyx/android/sdk/base/rx/RxFilter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const-string p2, "getContentView(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V

    return-void
.end method

.method public static final synthetic access$globalLayoutChanged(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->b()V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isActivityAlive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getApplicationSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget v3, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->h:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_0

    iput v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->h:I

    :cond_0
    iget v2, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->h:I

    sub-int/2addr v2, v0

    div-int/lit8 v1, v1, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->i:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->i:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->j:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardOpen(I)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;

    invoke-direct {v0, v2}, Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->i:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->j:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardClose()V

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    sget-object v0, Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;->INSTANCE:Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->k:Lcom/onyx/android/sdk/base/rx/RxFilter;

    iget-wide v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->g:J

    new-instance v2, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup$a;-><init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->f:Landroid/view/View;

    new-instance v1, Lcom/sunia/HTREnginev2/jui;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jui;-><init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BadTokenException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e:Landroid/content/Context;

    return-object p0
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->k:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->k:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->j:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->e:Landroid/content/Context;

    return-void
.end method

.method public final setKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHookPopup;->j:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-void
.end method
