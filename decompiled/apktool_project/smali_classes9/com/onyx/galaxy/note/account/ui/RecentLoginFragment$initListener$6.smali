.class final Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Rect;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n254#2:595\n256#2,2:596\n256#2,2:598\n*S KotlinDebug\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6\n*L\n179#1:595\n180#1:596,2\n181#1:598,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "newRect",
        "Landroid/graphics/Rect;",
        "oldRect",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n254#2:595\n256#2,2:596\n256#2,2:598\n*S KotlinDebug\n*F\n+ 1 RecentLoginFragment.kt\ncom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6\n*L\n179#1:595\n180#1:596,2\n181#1:598,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->invoke(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "requireActivity(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->isSmallScreen(Landroid/app/Activity;)Z

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvDataTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvDataTips"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v4

    :goto_0
    if-ne p2, p1, :cond_9

    .line 6
    iget-object p2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_3
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvDataTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, p1, 0x1

    const/16 v5, 0x8

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v5

    .line 7
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_5
    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->tvHelpAndFeedback:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvHelpAndFeedback"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr p1, v3

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    .line 9
    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyDataTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 11
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment$initListener$6;->this$0:Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/RecentLoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v0, p0

    :goto_3
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/FragmentRecentLoginBinding;->llyFeedback:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_9
    return-void
.end method
