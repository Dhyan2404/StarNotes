.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emailTab:Lcom/google/android/material/tabs/TabItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emailVerifyLayout:Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mEmailViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mPhoneViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final phoneTab:Lcom/google/android/material/tabs/TabItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final phoneVerifyLayout:Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final subTitleTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleBar:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final verifyLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/google/android/material/tabs/TabItem;Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;Lcom/google/android/material/tabs/TabItem;Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->emailTab:Lcom/google/android/material/tabs/TabItem;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->emailVerifyLayout:Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->phoneTab:Lcom/google/android/material/tabs/TabItem;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->phoneVerifyLayout:Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->subTitleTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->titleBar:Landroid/widget/FrameLayout;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->verifyLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_mixed_verify:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_mixed_verify:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_mixed_verify:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;

    return-object p0
.end method


# virtual methods
.method public getEmailViewModel()Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->mEmailViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public getPhoneViewModel()Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentMixedVerifyBinding;->mPhoneViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public abstract setEmailViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPhoneViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
