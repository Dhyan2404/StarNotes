.class public final Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clThumbnail:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivShadow:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivTemplateSelected:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thumbnailContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTemplateName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->clThumbnail:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->ivShadow:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->ivTemplateSelected:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->templateThumbnail:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->thumbnailContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->tvTemplateName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_shadow:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    if-eqz v3, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_template_selected:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->template_thumbnail:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    if-eqz v5, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->thumbnailContainer:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_template_name:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v7, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_template_normal_horizontal:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemTemplateNormalHorizontalBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
