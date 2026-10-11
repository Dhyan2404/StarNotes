.class public abstract Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final freeCrop:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final freeCropView:Lcom/onyx/galaxy/note/editor/view/FreeCropImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rectCrop:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rectCropView:Lcom/canhub/cropper/CropImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rl:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;Lcom/onyx/galaxy/note/editor/view/FreeCropImageView;Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;Landroid/widget/RadioGroup;Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;Lcom/canhub/cropper/CropImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->btnCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->freeCrop:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->freeCropView:Lcom/onyx/galaxy/note/editor/view/FreeCropImageView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->imageContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->radioGroup:Landroid/widget/RadioGroup;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->rectCrop:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->rectCropView:Lcom/canhub/cropper/CropImageView;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->rl:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->titleLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_image_cropper:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_image_cropper:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_image_cropper:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImageCropperBinding;

    return-object p0
.end method
