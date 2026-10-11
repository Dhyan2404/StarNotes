.class public Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;
    }
.end annotation


# static fields
.field public static final EXTRA_ALBUM:Ljava/lang/String; = "extra_album"


# instance fields
.field public final c1:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

.field public d1:Landroidx/recyclerview/widget/RecyclerView;

.field public e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

.field public f1:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

.field public g1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

.field public h1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

.field public i1:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->c1:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->i1:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;

    return-void
.end method

.method public static synthetic k0(Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->l0(Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;)V

    return-void
.end method

.method public static newInstance(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_album"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final l0(Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;)V
    .locals 3

    iget v0, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/utils/UIUtils;->spanCount(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->spanCount:I

    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$dimen;->media_grid_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->i1:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;-><init>(IIZ)V

    iput-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->i1:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->f1:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    invoke-interface {v2}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;->provideSelectedItemCollection()Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->registerCheckStateListener(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->registerOnMediaClickListener(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->l0(Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->c1:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->c1:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->load(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAlbumMediaLoad(Landroid/database/Cursor;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onAlbumMediaReset()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->f1:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->g1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    :cond_0
    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->h1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context must implement SelectionProvider."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$a;-><init>(Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p0, Lcom/onyx/android/sdk/imagepicker/R$layout;->fragment_media_selection:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->c1:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->onDestroy()V

    return-void
.end method

.method public onMediaClick(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Lcom/onyx/android/sdk/matisse/internal/entity/Item;I)V
    .locals 1

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->h1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "extra_album"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    invoke-interface {p1, p0, p2, p3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;->onMediaClick(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Lcom/onyx/android/sdk/matisse/internal/entity/Item;I)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->g1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;->onUpdate()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$id;->recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->d1:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public refreshMediaGrid()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshSelection()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->e1:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->refreshSelection()V

    return-void
.end method
