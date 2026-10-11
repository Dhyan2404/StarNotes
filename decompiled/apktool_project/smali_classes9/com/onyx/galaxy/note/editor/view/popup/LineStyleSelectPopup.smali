.class public final Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "onShow",
        "n",
        "r",
        "Landroid/app/Activity;",
        "q",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;",
        "penViewModel",
        "Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;",
        "s",
        "Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
.field public final q:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->q:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->o(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLineStyleType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r()V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLineStyleType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLineStyleType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->solidStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "solidStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/qyi;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qyi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dashStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "dashStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ryi;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ryi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dotStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "dotStyle"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/syi;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/syi;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->n()V

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->r:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getLineStyleType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->solidStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dashStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-ne v0, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;->lineStyle:Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStrokeStyleBinding;->dotStyle:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
