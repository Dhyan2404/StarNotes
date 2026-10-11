.class public Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final i:Landroid/view/LayoutInflater;

.field public j:Landroid/view/ViewGroup;

.field public k:Ljava/lang/String;

.field public final l:Landroid/os/Handler;

.field public final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->m:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->getSelectedItem()I

    move-result v0

    iput v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->g:I

    invoke-virtual {p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItems;->getItems()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->h:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->i:Landroid/view/LayoutInflater;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->l:Landroid/os/Handler;

    iput p3, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->e:I

    iput p4, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->f:I

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p3, Lcom/onegravity/rteditor/R$attr;->rte_ToolbarSpinnerSelectedColor:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->n:I

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItemViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    iget-object v2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->b(ILandroid/view/View;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(ILandroid/view/View;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V
    .locals 2

    sget v0, Lcom/onegravity/rteditor/R$id;->spinner_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->b(Landroid/widget/TextView;)V

    sget v1, Lcom/onegravity/rteditor/R$id;->spinner_color:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->a(Landroid/view/View;)V

    sget p3, Lcom/onegravity/rteditor/R$id;->chip_pacemaker:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->g:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->n:I

    goto :goto_1

    :cond_1
    const p0, 0x106000d

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final d(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->k:Ljava/lang/String;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-object p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;->c(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem$OnChangedListener;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->i:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    shl-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItemViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->b(ILandroid/view/View;Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;)V

    return-object p3
.end method

.method public getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->getItem(I)Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedItem()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->g:I

    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->i:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->e:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p3, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->j:Landroid/view/ViewGroup;

    sget p2, Lcom/onegravity/rteditor/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->d(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSpinnerItemChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sunia/HTREnginev2/iwm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/iwm;-><init>(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->g:I

    return-void
.end method

.method public updateSpinnerTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/onegravity/rteditor/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->d(Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
