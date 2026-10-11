.class public final Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->f(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2:110\n766#2:111\n857#2,2:112\n1726#2,3:114\n1856#2:117\n*S KotlinDebug\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n*L\n95#1:110\n96#1:111\n96#1:112,2\n97#1:114,3\n95#1:117\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMaterialTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1855#2:110\n766#2:111\n857#2,2:112\n1726#2,3:114\n1856#2:117\n*S KotlinDebug\n*F\n+ 1 MaterialTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$loadMaterialPaperList$1\n*L\n95#1:110\n96#1:111\n96#1:112,2\n97#1:114,3\n95#1:117\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;",
            "Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->f:Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paperList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->isLandscape()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->f:Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->getPaperMaterialCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->e:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;->a(Ljava/util/List;)V

    return-void
.end method
