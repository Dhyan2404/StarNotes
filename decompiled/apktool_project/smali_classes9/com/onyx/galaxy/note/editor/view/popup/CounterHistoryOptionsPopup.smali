.class public final Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "n",
        "Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;",
        "q",
        "Lkotlin/Lazy;",
        "m",
        "()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;",
        "r",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;",
        "getCallback",
        "()Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;",
        "setCallback",
        "(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;)V",
        "callback",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field public final q:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$binding$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->q:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->n()V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;->onDelete()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;->onEditCountName()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    return-object p0
.end method

.method public final m()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->q:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;

    return-object p0
.end method

.method public final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDelete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/nee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/nee;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->m()Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterHistoryOptionsBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvRename"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/oee;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/oee;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final setCallback(Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;

    return-void
.end method
