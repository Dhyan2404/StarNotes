.class public final Lcom/onyx/galaxy/note/message/handler/NotificationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\n\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0014R\u0017\u0010 \u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010#\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u001f\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/handler/NotificationHandler;",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "notification",
        "Landroid/view/View;",
        "parentView",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "viewModel",
        "",
        "onNotification",
        "handleTextUpgradeNotification",
        "handleImageUpgradeNotification",
        "handleMixUpgradeNotification",
        "handleTextGuideNotification",
        "handleImageGuideNotification",
        "handleMixGuideNotification",
        "handleReleaseNoteNotification",
        "handleWebsiteLinkNotification",
        "handleRedBookLinkNotification",
        "handleWebViewNotification",
        "Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;",
        "binding",
        "notificationViewModel",
        "handleSidebarNotification",
        "Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;",
        "handleBannerNotification",
        "loadSidebarImage",
        "",
        "a",
        "I",
        "getDefaultCoverWidth",
        "()I",
        "defaultCoverWidth",
        "b",
        "getDefaultCoverHeight",
        "defaultCoverHeight",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->default_notification_cover_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    sput v1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->a:I

    sget v1, Lcom/onyx/galaxy/note/R$integer;->default_notification_cover_height:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->e(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->d(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->f(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;)V
    .locals 1

    const-string p1, "$notification"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onPrimaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    return-void
.end method

.method public static final e(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;Landroid/view/View;)V
    .locals 1

    const-string p3, "$notification"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$notificationViewModel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p3, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->onSecondaryButtonClick(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton2()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getArgs()Lcom/onyx/android/sdk/base/extension/StringMap;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->navigateWithStrategy(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->container:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->setSidebarNotificationClosed(Z)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V
    .locals 2

    const-string v0, "$binding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    const-string v1, "image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$handleSidebarNotification$3$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$handleSidebarNotification$3$1;-><init>(I)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationHandler;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->loadSidebarImage(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V

    return-void
.end method


# virtual methods
.method public final getDefaultCoverHeight()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->b:I

    return p0
.end method

.method public final getDefaultCoverWidth()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->a:I

    return p0
.end method

.method public final handleBannerNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "binding"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->contentText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getContent()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/databinding/LayoutBannerNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p0

    sget p2, Lcom/onyx/galaxy/note/R$id;->tag_key_data:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final handleImageGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/ImageGuidePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/ImageGuidePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleImageUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/ImageUpgradePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleMixGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/MixGuidePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/MixGuidePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleMixUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/MixUpgradePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/MixUpgradePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleRedBookLinkNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/RedBookLinkPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/RedBookLinkPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleReleaseNoteNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleSidebarNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "binding"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notificationViewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->closeButton:Landroid/widget/ImageView;

    const-string p0, "closeButton"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getWidth()I

    move-result p0

    sget v1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->a:I

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/IntKt;->defaultIfZero(II)I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getHeight()I

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->b:I

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/IntKt;->defaultIfZero(II)I

    move-result v1

    int-to-float p0, p0

    int-to-float v1, v1

    div-float/2addr p0, v1

    iget-object v2, p2, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    const-string v1, "image"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v3, p0

    invoke-static/range {v2 .. v7}, Lcom/onyx/galaxy/note/ui/view/RatioImageView;->setWidthHeightRatio$default(Lcom/onyx/galaxy/note/ui/view/RatioImageView;FZZILjava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    iget-object v3, p2, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->clipToRoundRect(Landroid/view/View;Ljava/lang/Number;)V

    iget-object v4, p2, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/k5k;

    invoke-direct {v7, p1}, Lcom/sunia/HTREnginev2/k5k;-><init>(Lcom/onyx/android/sdk/data/message/model/NotificationModel;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/l5k;

    invoke-direct {v3, p1, p2, p3}, Lcom/sunia/HTREnginev2/l5k;-><init>(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object p1, p2, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    new-instance p3, Lcom/sunia/HTREnginev2/m5k;

    invoke-direct {p3, p2, p0}, Lcom/sunia/HTREnginev2/m5k;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleTextGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/TextGuidePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/TextGuidePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleTextUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/TextUpgradePopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleWebViewNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/WebViewPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final handleWebsiteLinkNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "notification"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parentView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewModel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p3}, Lcom/onyx/galaxy/note/message/dialog/WebsiteLinkPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/message/model/NotificationModel;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showFullScreen(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public final loadSidebarImage(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "binding"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getImage()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/glide/GlideExt;->INSTANCE:Lcom/onyx/android/sdk/data/glide/GlideExt;

    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const-string v1, "load(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/glide/GlideExt;->doOnNext(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$2;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$2;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/glide/GlideExt;->doOnError(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->image:Lcom/onyx/galaxy/note/ui/view/RatioImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final onNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/message/model/NotificationModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleMixGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleImageGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleTextGuideNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleMixUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleImageUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleTextUpgradeNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleRedBookLinkNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleWebsiteLinkNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleWebViewNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->handleReleaseNoteNotification(Lcom/onyx/android/sdk/data/message/model/NotificationModel;Landroid/view/View;Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
