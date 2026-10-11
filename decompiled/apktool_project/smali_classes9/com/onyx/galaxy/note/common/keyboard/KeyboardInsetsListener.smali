.class public final Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "Landroid/view/View;",
        "v",
        "Landroidx/core/view/WindowInsetsCompat;",
        "insets",
        "onApplyWindowInsets",
        "",
        "release",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "listener",
        "setKeyboardStateListener",
        "b",
        "Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;",
        "insetsBean",
        "a",
        "Landroid/view/View;",
        "rootView",
        "",
        "J",
        "LAYOUT_CHANGE_FILTER_TIME_MS",
        "",
        "c",
        "Z",
        "isKeyboardOpen",
        "",
        "d",
        "I",
        "prekeyboardHeight",
        "e",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "f",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "layoutChangeFilter",
        "<init>",
        "(Landroid/view/View;)V",
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
.field public final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public c:Z

.field public d:I

.field public e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->a:Landroid/view/View;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->b:J

    new-instance p1, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->f:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->b()V

    return-void
.end method

.method public static final synthetic access$globalLayoutChanged(Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->a(Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;->getImeHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;->getImeVisible()Z

    move-result p1

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->c:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->d:I

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object v4, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->c:Z

    iput v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->d:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardOpen(I)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->c:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iput-boolean v3, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->c:Z

    iput v3, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->d:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;->onKeyboardClose()V

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    sget-object p1, Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;->INSTANCE:Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->f:Lcom/onyx/android/sdk/base/rx/RxFilter;

    iget-wide v1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->b:J

    new-instance v3, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener$a;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener$a;-><init>(Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v2, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;-><init>()V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p2

    invoke-virtual {v2, p2}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;->setImeVisible(Z)V

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;->setImeHeight(I)V

    new-instance p2, Landroid/graphics/Rect;

    iget v0, v1, Landroidx/core/graphics/Insets;->left:I

    iget v3, v1, Landroidx/core/graphics/Insets;->top:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {p2, v0, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p2}, Lcom/onyx/galaxy/note/common/keyboard/WindowInsetsBean;->setImeRect(Landroid/graphics/Rect;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowInsets: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", system bar: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->f:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    const-string p1, "CONSUMED"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->f:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-void
.end method

.method public final setKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/KeyboardInsetsListener;->e:Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;

    return-void
.end method
