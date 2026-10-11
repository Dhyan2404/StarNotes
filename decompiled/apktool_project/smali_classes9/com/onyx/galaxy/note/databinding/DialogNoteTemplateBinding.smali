.class public final Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flyContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCustomSwitchContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteTemplateRoot:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTemplateAdded:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTemplateCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTemplateRecommend:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->e:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->flyContent:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->llCustomSwitchContainer:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->noteTemplateRoot:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateAdded:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateRecommend:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->cl_category_custom_template:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    if-eqz v4, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->cl_category_template:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->fly_content:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->ll_custom_switch_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    move-object v8, p0

    check-cast v8, Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->titleContainer:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    move-result-object v9

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_template_added:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_template_custom:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v11, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_template_recommend:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v12, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v12}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;-><init>(Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;
    .locals 2
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

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_note_template:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->e:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    return-object p0
.end method
