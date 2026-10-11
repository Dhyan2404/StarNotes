.class public Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLLECTION_IMAGE:I = 0x1

.field public static final COLLECTION_MIXED:I = 0x3

.field public static final COLLECTION_UNDEFINED:I = 0x0

.field public static final COLLECTION_VIDEO:I = 0x2

.field public static final STATE_COLLECTION_TYPE:Ljava/lang/String; = "state_collection_type"

.field public static final STATE_SELECTION:Ljava/lang/String; = "state_selection"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget v1, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxSelectable:I

    if-lez v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    iget p0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxImageSelectable:I

    return p0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    iget p0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->maxVideoSelectable:I

    return p0

    :cond_2
    return v1
.end method

.method public add(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->typeConflict(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    iput v2, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    iput v4, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result p1

    if-eqz p1, :cond_3

    iput v4, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    :cond_3
    :goto_0
    return v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t select images and videos at the same time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public asListOfString()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    iget-object v3, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/matisse/internal/utils/PathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public asListOfUri()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iput v4, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    :cond_5
    :goto_1
    return-void
.end method

.method public checkedNumOf(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)I
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public count()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getCollectionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    return p0
.end method

.method public getDataWithBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "state_selection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "state_collection_type"

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public isAcceptable(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a()I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_over_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->typeConflict(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->error_type_conflict:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->isAcceptable(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSelected(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public maxSelectableReached()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->a()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffff4

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "state_selection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "state_collection_type"

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public overwrite(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    :goto_0
    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b()V

    :cond_1
    :goto_0
    return p1
.end method

.method public setDefaultSelection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/matisse/internal/entity/Item;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public typeConflict(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 4

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->mediaTypeExclusive:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isImage()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->c:I

    if-eq p0, v2, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
