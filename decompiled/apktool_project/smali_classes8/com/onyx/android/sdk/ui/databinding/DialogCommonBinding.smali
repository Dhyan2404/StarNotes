.class public abstract Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final clEditContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final contentContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivLoadingAnim:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivWarning:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loadingContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvProgress:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitleContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/TextView;Lcom/onyx/android/sdk/ui/MediumTextView;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->clEditContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->contentContainer:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->ivLoadingAnim:Landroid/widget/ImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->ivWarning:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->loadingContainer:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->textContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvProgress:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitleContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
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
    sget v0, Lcom/onyx/android/sdk/ui/R$layout;->dialog_common:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
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
    sget v0, Lcom/onyx/android/sdk/ui/R$layout;->dialog_common:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;
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
    sget v0, Lcom/onyx/android/sdk/ui/R$layout;->dialog_common:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    return-object p0
.end method
