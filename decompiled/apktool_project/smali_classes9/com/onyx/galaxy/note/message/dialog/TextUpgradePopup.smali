.class public Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;
.super Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;",
        "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;",
        "",
        "initContentView",
        "r",
        "p",
        "Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;",
        "s",
        "Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "notification",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "viewModel",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V",
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
.field public s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->p()V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->q(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onSecondaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getCloseStrategy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "dialogRoot"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->clipToRoundRect(Landroid/view/View;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public initContentView()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/base/R$color;->black_percent_30:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final p()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    const/4 v6, 0x0

    const-string v7, "binding"

    if-nez v1, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->confirmButton:Landroid/widget/TextView;

    const-string v2, "confirmButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup$a;-><init>(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    iget-object v0, v6, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "cancelButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/lgn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/lgn;-><init>(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getTitle()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->contentText:Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getContent()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;->setRichText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->confirmButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/PopupUpgradeTextBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/kgn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kgn;-><init>(Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
