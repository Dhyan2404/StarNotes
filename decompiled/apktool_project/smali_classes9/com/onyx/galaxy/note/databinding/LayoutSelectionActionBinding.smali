.class public final Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final contentContainer:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollContainer:Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollContainerIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/LinearLayoutCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->contentContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->layoutContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->scrollContainer:Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->scrollContainerIndicator:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->content_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v4, :cond_0

    move-object v5, p0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->scroll_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;

    if-eqz v6, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->scroll_container_indicator:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v7, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;Lcom/onyx/galaxy/note/editor/view/HorizontalTabScrollView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_selection_action:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSelectionActionBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    return-object p0
.end method
