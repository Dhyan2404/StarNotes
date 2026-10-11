.class public Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "args_album"

.field public static final f:Ljava/lang/String; = "args_enable_capture"


# instance fields
.field public a:I

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/loader/app/LoaderManager;

.field public d:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->a:I

    return-void
.end method


# virtual methods
.method public load(Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/matisse/internal/entity/Album;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->load(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Z)V

    return-void
.end method

.method public load(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Z)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/matisse/internal/entity/Album;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_album"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "args_enable_capture"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->c:Landroidx/loader/app/LoaderManager;

    iget p2, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->a:I

    invoke-virtual {p1, p2, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->c:Landroidx/loader/app/LoaderManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->d:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "args_album"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string p1, "args_enable_capture"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {p0, v0, v1}, Lcom/onyx/android/sdk/matisse/internal/loader/AlbumMediaLoader;->newInstance(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Album;Z)Landroidx/loader/content/CursorLoader;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->c:Landroidx/loader/app/LoaderManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->a:I

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->d:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->d:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;->onAlbumMediaLoad(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->d:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;->onAlbumMediaReset()V

    return-void
.end method
