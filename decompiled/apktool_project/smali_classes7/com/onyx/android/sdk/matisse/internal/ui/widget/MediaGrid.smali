.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;
.super Lcom/onyx/android/sdk/matisse/internal/ui/widget/SquareFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;,
        Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;
    }
.end annotation


# instance fields
.field public e:Landroid/widget/ImageView;

.field public f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

.field public j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

.field public k:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/SquareFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$layout;->media_grid_content:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$id;->media_thumbnail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e:Landroid/widget/ImageView;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$id;->check_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$id;->gif:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->g:Landroid/widget/ImageView;

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$id;->video_duration:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->h:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->c:Z

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setCountable(Z)V

    return-void
.end method

.method public bindMedia(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->b()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->d()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->g:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isGif()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget v3, v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->a:I

    iget-object v4, v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/matisse/engine/ImageEngine;->loadGifThumbnail(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget v3, v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->a:I

    iget-object v4, v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/matisse/engine/ImageEngine;->loadThumbnail(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->h:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-wide v1, p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getMedia()Lcom/onyx/android/sdk/matisse/internal/entity/Item;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->k:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->e:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {v0, v1, p1, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;->onThumbnailClicked(Landroid/widget/ImageView;Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->i:Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-interface {v0, v1, p1, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;->onCheckViewClicked(Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preBindMedia(Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->j:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    return-void
.end method

.method public removeOnMediaGridClickListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->k:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    return-void
.end method

.method public setCheckEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    return-void
.end method

.method public setCheckedNum(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->f:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    return-void
.end method

.method public setOnMediaGridClickListener(Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->k:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;

    return-void
.end method
