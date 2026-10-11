.class public abstract Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final divider:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llEmptyContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlFileList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleInputLayout:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvImport:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvSearchEmpty:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvSystemFileManager:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MediumTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->divider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iput-object p5, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->ivBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p6, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p7, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->llEmptyContainer:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->rlFileList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iput-object p10, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iput-object p11, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->titleInputLayout:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    iput-object p12, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvImport:Lcom/onyx/android/sdk/ui/MediumTextView;

    iput-object p13, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvSearchEmpty:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p14, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvSystemFileManager:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p15, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
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
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$layout;->activity_file_picker:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
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
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$layout;->activity_file_picker:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
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
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$layout;->activity_file_picker:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    return-object p0
.end method
