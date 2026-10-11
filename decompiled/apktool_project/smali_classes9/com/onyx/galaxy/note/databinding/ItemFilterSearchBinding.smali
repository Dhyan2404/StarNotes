.class public final Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvSearch:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->ivSearch:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->llRoot:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->tvSearch:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_search:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    sget v2, Lcom/onyx/galaxy/note/R$id;->tv_search:I

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v3, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    return-object p0

    :cond_0
    move v0, v2

    :cond_1
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_filter_search:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemFilterSearchBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    return-object p0
.end method
