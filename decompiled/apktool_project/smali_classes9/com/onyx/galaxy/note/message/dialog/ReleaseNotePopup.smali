.class public Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;
.super Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\u0016\u0010\u000b\u001a\u00020\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000eR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;",
        "Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;",
        "",
        "initContentView",
        "",
        "t",
        "r",
        "p",
        "Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;",
        "s",
        "Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;",
        "binding",
        "",
        "",
        "Ljava/util/List;",
        "imageList",
        "u",
        "titleList",
        "v",
        "contentList",
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
.field public s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->u:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->v:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->r()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->p()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    return-object p0
.end method

.method public static final synthetic access$getContentList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->v:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getImageList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTitleList$p(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->u:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->q(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;Landroid/view/View;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;Landroid/view/View;)V
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

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getNavType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

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

.method public static final s(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "dialogRoot"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->clipToRoundRect(Landroid/view/View;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

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

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

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
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->confirmButton:Landroid/widget/TextView;

    const-string v0, "confirmButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/sjl;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/sjl;-><init>(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->confirmButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getButton1()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->dialogRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    new-instance v3, Lcom/sunia/HTREnginev2/rjl;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/rjl;-><init>(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->pageText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->pageIndicator:Lcom/onyx/galaxy/note/ui/view/PageIndicatorView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_6

    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->u:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->contentText:Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/ui/view/RichTextView;->fitContentHeight(Z)Lcom/onyx/galaxy/note/ui/view/RichTextView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->contentText:Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->v:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/ui/view/NotificationRichTextView;->setRichText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->imagePager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup$initView$2;-><init>(Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->imagePager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/message/dialog/ReleaseNoteAdapter;-><init>()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->s:Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;

    if-nez v3, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v1, v3

    :goto_2
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupReleaseNoteBinding;->carouselBinding:Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutReleaseNoteCarouselBinding;->imagePager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final t()Z
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getSwiper()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getSwiper()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getTitleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/dialog/NotificationBasePopup;->getNotification()Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationModel;->getComponents()Lcom/onyx/android/sdk/data/message/model/NotificationComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/NotificationComponents;->getSwiper()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;->getContentList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->t:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->u:Ljava/util/List;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/dialog/ReleaseNotePopup;->v:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v3, 0x1

    xor-int/2addr p0, v3

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
