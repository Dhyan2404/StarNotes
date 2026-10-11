.class public final Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB#\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "n",
        "",
        "q",
        "I",
        "editNameRes",
        "",
        "r",
        "Z",
        "canDelete",
        "Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;",
        "s",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;",
        "t",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;",
        "getCallback",
        "()Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;",
        "setCallback",
        "(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;)V",
        "callback",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;IZ)V",
        "OperationCallback",
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
.field public final q:I

.field public final r:Z

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->q:I

    .line 5
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->r:Z

    .line 6
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->s:Lkotlin/Lazy;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->n()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget p2, Lcom/onyx/galaxy/note/R$string;->edit:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;->onEdit()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->delete:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    sget v0, Lcom/onyx/galaxy/note/R$string;->counter_task_delete_warning:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$initListener$2$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;

    return-object p0
.end method

.method public final m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    return-object p0
.end method

.method public final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;->tvEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->r:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;->tvEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvEdit"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/pee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/pee;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterMoreOptionsBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDelete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qee;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;

    return-void
.end method
