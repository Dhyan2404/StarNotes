.class public Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;
.super Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\u0008\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;",
        "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;",
        "",
        "initContentView",
        "s",
        "p",
        "Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;",
        "Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;",
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
.field public s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;


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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->p()V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->q(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->r(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getCloseStrategy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->closeWithStrategy(Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;Ljava/lang/String;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;Landroid/view/View;)V
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

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

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
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->image:Landroid/widget/ImageView;

    const-string v0, "image"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/m6o;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/m6o;-><init>(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->closeButton:Landroid/widget/ImageView;

    const-string v0, "closeButton"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/n6o;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/n6o;-><init>(Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getResize()Z

    move-result v0

    const-string v1, "image"

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    if-nez v4, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/IntKt;->defaultIfZero(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/IntKt;->defaultIfZero(II)I

    move-result v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_2
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->image:Landroid/widget/ImageView;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    :cond_3
    sget-object v6, Lcom/onyx/android/sdk/data/glide/GlideExt;->INSTANCE:Lcom/onyx/android/sdk/data/glide/GlideExt;

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;->s:Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    iget-object v7, v2, Lcom/onyx/galaxy/note/databinding/PopupLinkWebsiteBinding;->image:Landroid/widget/ImageView;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/data/glide/GlideExt;->load$default(Lcom/onyx/android/sdk/data/glide/GlideExt;Landroid/widget/ImageView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
