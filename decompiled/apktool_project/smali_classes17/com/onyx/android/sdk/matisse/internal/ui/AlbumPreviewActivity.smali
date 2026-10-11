.class public Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;
.super Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;


# static fields
.field public static final EXTRA_ALBUM:Ljava/lang/String; = "extra_album"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "extra_item"


# instance fields
.field public B0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

.field public C0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    return-void
.end method


# virtual methods
.method public onAlbumMediaLoad(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->addAll(Ljava/util/List;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;->C0:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;->C0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_item"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPreviousPos:I

    :cond_3
    return-void
.end method

.method public onAlbumMediaReset()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v1, -0x54fffff2

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/AlbumPreviewActivity;->B0:Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumMediaCollection;->onDestroy()V

    return-void
.end method
