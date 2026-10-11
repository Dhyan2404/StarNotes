.class public final Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditBeautifyResultPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n64#2:151\n1#3:152\n*S KotlinDebug\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n*L\n37#1:151\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008)\u0010*J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0008\u0010\u0007\u001a\u00020\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0014J\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u000fH\u0007J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u0008\u0010\u0013\u001a\u00020\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0005H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010#R\u0016\u0010\'\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010&R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001d\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;",
        "event",
        "",
        "updateResult",
        "onShow",
        "onDismiss",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "getLastWindowLocation",
        "",
        "keyboardHeight",
        "onKeyboardOpen",
        "onKeyboardClose",
        "Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;",
        "onActivityTouchedEvent",
        "s",
        "o",
        "n",
        "",
        "newText",
        "t",
        "u",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "q",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "activity",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;",
        "originEvent",
        "Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;",
        "Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;",
        "keyboardHelper",
        "v",
        "<init>",
        "(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;)V",
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
        "SMAP\nEditBeautifyResultPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n+ 2 DataBinding.kt\ncom/onyx/android/sdk/base/extension/DataBindingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,150:1\n64#2:151\n1#3:152\n*S KotlinDebug\n*F\n+ 1 EditBeautifyResultPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup\n*L\n37#1:151\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;)V
    .locals 2
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->q:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->r:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    new-instance p1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->u:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getViewModel$p(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;)Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    return-object p0
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p1, "resultText"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p1, 0x64

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboard(Landroid/view/View;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getLastWindowLocation()Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getLastWindowLocationOfEditPopup()Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    return-object p0
.end method

.method public final n()V
    .locals 8

    new-instance v7, Lcom/onyx/android/sdk/ui/PopupDragHandler;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object v2, v0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->dragButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "dragButton"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup$initDragHandler$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup$initDragHandler$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/ui/PopupDragHandler;-><init>(Landroid/widget/PopupWindow;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/ui/PopupDragHandler;->initialize()V

    return-void
.end method

.method public final o()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "clearButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/wkf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/wkf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->confirmButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "confirmButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/xkf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/xkf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    new-instance v1, Lcom/sunia/HTREnginev2/ykf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ykf;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final onActivityTouchedEvent(Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->u:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->release()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onDismiss()V

    return-void
.end method

.method public onKeyboardClose()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->getWindowLocationBeforeKeyboardOpen()Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->update$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;IIILjava/lang/Object;)Landroid/widget/PopupWindow;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;

    :cond_0
    return-void
.end method

.method public onKeyboardOpen(I)V
    .locals 12

    sget-object v0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getCachedWindowLocation(Landroid/widget/PopupWindow;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v11

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getDy()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, p1, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->t:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->setWindowLocationBeforeKeyboardOpen(Lcom/onyx/android/sdk/base/data/WindowLocation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/onyx/android/sdk/base/data/WindowLocation;->copy$default(Lcom/onyx/android/sdk/base/data/WindowLocation;IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setY(I)V

    invoke-virtual {v2, v11}, Lcom/onyx/android/sdk/base/data/WindowLocation;->setDy(I)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->update$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;IIILjava/lang/Object;)Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->u()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->resultText:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getOriginShapes()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getStartX()F

    move-result v4

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getBaseline()F

    move-result v5

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getTypesetArgs()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-result-object v6

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/app/FinishEditBeautifyResultEvent;-><init>(Ljava/util/List;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/PopupEditBeautifyResultBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivityContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->u:Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->init(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->bindRootLayout(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->bindKeyboardInsetsListener(Landroid/view/ViewGroup;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;->setOnKeyboardStateListener(Lcom/onyx/galaxy/note/common/keyboard/KeyboardStateListener;)Lcom/onyx/galaxy/note/common/keyboard/KeyboardHelper;

    return-void
.end method

.method public final updateResult(Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->v:Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EditBeautifyResultPopup;->s()V

    return-void
.end method
