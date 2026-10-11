.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1549#2:1162\n1620#2,3:1163\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1\n*L\n913#1:1162\n913#1:1163,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1161:1\n1549#2:1162\n1620#2,3:1163\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1\n*L\n913#1:1162\n913#1:1163,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/category/data/NoteTagFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagFilter$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/NoteTagFilter$Companion;->generateTagFilterArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1$tagIds$1;->INSTANCE:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1$tagIds$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getNoteByTagIdsArgs(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method
