.class public Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final d1:Ljava/lang/String; = "args_item"


# instance fields
.field public c1:Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic k0(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;)Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->c1:Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    return-object p0
.end method

.method public static newInstance(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_item"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->c1:Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/onyx/android/sdk/imagepicker/R$layout;->fragment_preview_item:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->c1:Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "args_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->video_play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;

    invoke-direct {v1, p0, p2}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$a;-><init>(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    new-instance p1, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;-><init>(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;)V

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setSingleTapListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getBitmapSize(Landroid/net/Uri;Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/onyx/android/sdk/matisse/engine/ImageEngine;->loadGifImage(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/onyx/android/sdk/matisse/engine/ImageEngine;->loadImage(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public resetView()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->image_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->resetMatrix()V

    :cond_0
    return-void
.end method
