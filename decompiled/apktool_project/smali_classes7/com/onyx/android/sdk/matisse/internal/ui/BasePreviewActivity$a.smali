.class public Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mAdapter:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/PreviewPagerAdapter;->getMediaItem(I)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->remove(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->C(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->add(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->D(Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-object v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/onyx/android/sdk/matisse/listener/OnSelectedListener;->onSelected(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method
