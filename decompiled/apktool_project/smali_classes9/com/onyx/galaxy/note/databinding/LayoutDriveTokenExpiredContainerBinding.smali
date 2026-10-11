.class public final Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvDriveTokenExpireBind:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvDriveTokenExpireWarn:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->tvDriveTokenExpireBind:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->tvDriveTokenExpireWarn:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_close:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v1, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_drive_token_expire_bind:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_drive_token_expire_warn:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    check-cast p0, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_drive_token_expired_container:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    return-object p0
.end method
