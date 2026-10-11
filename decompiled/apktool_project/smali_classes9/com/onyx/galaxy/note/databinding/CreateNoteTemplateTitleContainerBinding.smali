.class public abstract Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clTitleContainerBg:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final createTitleDynamicBg:Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flTopContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headerContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteTemplateBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llTopContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTemplateCreate:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/FrameLayout;Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/ui/MediumTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->clTitleContainerBg:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->createTitleDynamicBg:Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->flTopContainer:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->headerContainer:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->ivNoteTemplateBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->llTopContainer:Landroid/widget/FrameLayout;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->tvTemplateCreate:Lcom/onyx/android/sdk/ui/MediumTextView;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->create_note_template_title_container:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->create_note_template_title_container:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->create_note_template_title_container:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    return-object p0
.end method
