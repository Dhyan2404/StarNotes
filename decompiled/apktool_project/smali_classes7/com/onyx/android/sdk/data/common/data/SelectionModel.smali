.class public final Lcom/onyx/android/sdk/data/common/data/SelectionModel;
.super Landroidx/databinding/BaseObservable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/databinding/BaseObservable;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000c\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u00022\u00020\u0003B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J#\u0010\"\u001a\u00020\u00132\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000$2\u0006\u0010%\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010&J\u0006\u0010\'\u001a\u00020\u0013J\u0015\u0010(\u001a\u00020\u00132\u0006\u0010%\u001a\u00028\u0000H\u0007\u00a2\u0006\u0002\u0010)J#\u0010*\u001a\u00020\u00132\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001a2\u0006\u0010%\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010&J\u000e\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\u0013J\u0006\u0010-\u001a\u00020 J\u0013\u0010.\u001a\u00020 2\u0006\u0010%\u001a\u00028\u0000\u00a2\u0006\u0002\u0010/R0\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\tj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\n8GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u00138G\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00068G\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/SelectionModel;",
        "T",
        "Landroidx/databinding/BaseObservable;",
        "Ljava/io/Serializable;",
        "()V",
        "count",
        "",
        "(J)V",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "getComparator",
        "()Ljava/util/Comparator;",
        "setComparator",
        "(Ljava/util/Comparator;)V",
        "getCount",
        "()J",
        "setCount",
        "isAllDataSelected",
        "",
        "()Z",
        "<set-?>",
        "isSelectedAllMode",
        "selectedCount",
        "getSelectedCount",
        "selectedList",
        "",
        "getSelectedList",
        "()Ljava/util/List;",
        "setSelectedList",
        "(Ljava/util/List;)V",
        "clear",
        "",
        "clearSelectedStatus",
        "contains",
        "list",
        "",
        "t",
        "(Ljava/util/List;Ljava/lang/Object;)Z",
        "hasSelectedItems",
        "isSelected",
        "(Ljava/lang/Object;)Z",
        "remove",
        "setSelectedAllMode",
        "selectedAllMode",
        "toggleAllSection",
        "toggleSelectData",
        "(Ljava/lang/Object;)V",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private count:J

.field private isSelectedAllMode:Z

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    .line 7
    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    return-void
.end method

.method private final contains(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final remove(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->clearSelectedStatus()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    return-void
.end method

.method public final clearSelectedStatus()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->setSelectedAllMode(Z)V

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    return-wide v0
.end method

.method public final getSelectedCount()J
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public final getSelectedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method public final hasSelectedItems()Z
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAllDataSelected()Z
    .locals 6
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSelected(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->contains(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSelectedAllMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    return p0
.end method

.method public final setComparator(Ljava/util/Comparator;)V
    .locals 0
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public final setCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->count:J

    return-void
.end method

.method public final setSelectedAllMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/databinding/BaseObservable;->notifyChange()V

    return-void
.end method

.method public final setSelectedList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    return-void
.end method

.method public final toggleAllSection()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isAllDataSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final toggleSelectData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->remove(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->selectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/BaseObservable;->notifyChange()V

    return-void
.end method
