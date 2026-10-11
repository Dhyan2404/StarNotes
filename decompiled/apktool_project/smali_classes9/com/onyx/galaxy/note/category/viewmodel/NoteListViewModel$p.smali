.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1855#2:1162\n288#2,2:1163\n1856#2:1165\n1549#2:1166\n1620#2,3:1167\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n*L\n660#1:1162\n661#1:1163,2\n660#1:1165\n664#1:1166\n664#1:1167,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1855#2:1162\n288#2,2:1163\n1856#2:1165\n1549#2:1166\n1620#2,3:1167\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$loadData$6\n*L\n660#1:1162\n661#1:1163,2\n660#1:1165\n664#1:1166\n664#1:1167,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result v3

    goto :goto_3

    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->setOrderIndex(F)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;->a(Ljava/util/List;)V

    return-void
.end method
