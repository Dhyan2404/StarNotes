.class public Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection$AlbumCallbacks;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;
.implements Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;


# static fields
.field public static final CHECK_STATE:Ljava/lang/String; = "checkState"

.field public static final EXTRA_RESULT_ORIGINAL_ENABLE:Ljava/lang/String; = "extra_result_original_enable"

.field public static final EXTRA_RESULT_SELECTION:Ljava/lang/String; = "extra_result_selection"

.field public static final EXTRA_RESULT_SELECTION_PATH:Ljava/lang/String; = "extra_result_selection_path"

.field public static final J0:I = 0x17

.field public static final K0:I = 0x18


# instance fields
.field public A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

.field public B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

.field public C0:Landroid/widget/TextView;

.field public D0:Landroid/widget/TextView;

.field public E0:Landroid/view/View;

.field public F0:Landroid/view/View;

.field public G0:Landroid/widget/LinearLayout;

.field public H0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

.field public I0:Z

.field public final w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

.field public x0:Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

.field public y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

.field public z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->K(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic D(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->J()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    return-object p0
.end method

.method public static synthetic F(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    return-object p0
.end method

.method public static synthetic G(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->L(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V

    return-void
.end method


# virtual methods
.method public final H()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v3, v3, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getSizeInMB(J)F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v4, v4, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final I()[Ljava/lang/String;
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    if-lt p0, v0, :cond_0

    const-string p0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    filled-new-array {p0, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x21

    if-lt p0, v0, :cond_1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final J()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/PermissionCompatUtils;->hasMediaOfUserSelectedPermission(Ljava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final K(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->needOrientationRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->orientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->captureStrategy:Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;->setCaptureStrategy(Lcom/onyx/android/sdk/matisse/internal/entity/CaptureStrategy;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t forget to set CaptureStrategy."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$attr;->album_element_color:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->button_preview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C0:Landroid/widget/TextView;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->button_apply:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->E0:Landroid/view/View;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->F0:Landroid/view/View;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->originalLayout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->G0:Landroid/widget/LinearLayout;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->original:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_3

    const-string v0, "checkState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->O()V

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$id;->selected_album:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setSelectedTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setPopupAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->A0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setAdapter(Landroid/widget/CursorAdapter;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p0, p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection$AlbumCallbacks;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->loadAlbums()V

    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->E0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->F0:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->E0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->F0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->newInstance(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->container:I

    const-class v1, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method public final M()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->J()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final N(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$a;-><init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->callback(Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->request()V

    return-void
.end method

.method public final O()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->count()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply_default:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->singleSelectionModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply_default:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->C0:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->D0:Landroid/widget/TextView;

    sget v3, Lcom/onyx/android/sdk/imagepicker/R$string;->button_apply:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->G0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->P()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->G0:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final P()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_original_size:I

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    :cond_0
    return-void
.end method

.method public capture()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

    if-eqz v0, :cond_0

    const/16 v1, 0x18

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;->dispatchCaptureIntent(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x17

    const-string v1, "extra_result_selection_path"

    const-string v2, "extra_result_selection"

    if-ne p1, p2, :cond_4

    const-string p1, "extra_result_bundle"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "state_selection"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v3, "extra_result_original_enable"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    const-string v5, "state_collection_type"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v5, "extra_result_apply"

    invoke-virtual {p3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/onyx/android/sdk/matisse/internal/utils/PathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p3, p2, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->overwrite(Ljava/util/ArrayList;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->refreshMediaGrid()V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->O()V

    goto :goto_1

    :cond_4
    const/16 p2, 0x18

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;->getCurrentPhotoUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->x0:Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/utils/MediaStoreCompat;->getCurrentPhotoPath()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    new-instance p1, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$b;-><init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)V

    invoke-direct {p1, p3, p2, v0}, Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/onyx/android/sdk/matisse/internal/utils/SingleMediaScanner$ScanListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAlbumLoad(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;-><init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAlbumReset()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$id;->button_preview:I

    const-string v2, "extra_result_original_enable"

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/onyx/android/sdk/matisse/internal/ui/SelectedPreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_default_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x17

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$id;->button_apply:I

    if-ne v0, v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_result_selection_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->originalLayout:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H()I

    move-result p1

    if-lez p1, :cond_2

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_original_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->originalMaxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/IncapableDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->H0:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckRadioView;->setChecked(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;->onCheck(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v1, -0x54fffff0

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->onDestroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onCheckedListener:Lcom/onyx/android/sdk/matisse/listener/OnCheckedListener;

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->setStateCurrentSelection(I)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumsAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object p2

    iget-boolean p2, p2, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->addCaptureCount()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->L(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V

    return-void
.end method

.method public onMediaClick(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Lcom/onyx/android/sdk/matisse/internal/entity/Item;I)V
    .locals 1

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_album"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_item"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->getDataWithBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_default_bundle"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "extra_result_original_enable"

    iget-boolean p2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x17

    invoke-virtual {p0, p3, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->w0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "checkState"

    iget-boolean p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->I0:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->O()V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->z0:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;->onSelected(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public provideSelectedItemCollection()Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->y0:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    return-object p0
.end method
