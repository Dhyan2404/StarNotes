.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;
    }
.end annotation


# instance fields
.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->j:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->k:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->newInstance(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem(I)Lcom/onyx/android/sdk/matisse/internal/entity/Item;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    return-object p0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->k:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter$a;->a(I)V

    :cond_0
    return-void
.end method
