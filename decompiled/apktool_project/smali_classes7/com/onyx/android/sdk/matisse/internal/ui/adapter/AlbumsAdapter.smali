.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field public final e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$attr;->album_thumbnail_placeholder:I

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;->e:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$attr;->album_thumbnail_placeholder:I

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    move-result-object p3

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->album_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->album_media_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/onyx/android/sdk/matisse/engine/ImageEngine;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$dimen;->media_grid_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;->e:Landroid/graphics/drawable/Drawable;

    sget p0, Lcom/onyx/android/sdk/imagepicker/R$id;->album_cover:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->getCoverUri()Landroid/net/Uri;

    move-result-object v6

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/onyx/android/sdk/matisse/engine/ImageEngine;->loadThumbnail(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/net/Uri;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$layout;->album_list_item:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
