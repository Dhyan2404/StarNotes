.class public abstract Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mVerifyCodeViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final skipButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
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

.field public final verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final verifyLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->headerTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->headerTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->skipButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->titleBar:Landroid/widget/FrameLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->verifyLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_bind_email:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_bind_email:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->fragment_bind_email:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    return-object p0
.end method


# virtual methods
.method public getVerifyCodeViewModel()Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->mVerifyCodeViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public abstract setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
