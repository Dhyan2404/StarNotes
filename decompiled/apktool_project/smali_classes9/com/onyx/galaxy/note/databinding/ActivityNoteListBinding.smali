.class public final Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final containerLeft:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final containerRight:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final drawerMenu:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/view/SlideLayout;)V
    .locals 0
    .param p1    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/fragment/app/FragmentContainerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/galaxy/note/category/view/SlideLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->containerLeft:Landroidx/fragment/app/FragmentContainerView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->containerRight:Landroidx/fragment/app/FragmentContainerView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerMenu:Landroidx/fragment/app/FragmentContainerView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->container_left:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v4, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->container_right:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v5, :cond_0

    move-object v6, p0

    check-cast v6, Landroidx/drawerlayout/widget/DrawerLayout;

    sget v0, Lcom/onyx/galaxy/note/R$id;->drawer_menu:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v7, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->noteQuotaBinding:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    move-result-object v8

    sget v0, Lcom/onyx/galaxy/note/R$id;->slide_layout:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/onyx/galaxy/note/category/view/SlideLayout;

    if-eqz v9, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/fragment/app/FragmentContainerView;Landroidx/fragment/app/FragmentContainerView;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/view/SlideLayout;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->activity_note_list:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->e:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method
