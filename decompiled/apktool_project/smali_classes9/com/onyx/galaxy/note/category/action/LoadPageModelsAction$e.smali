.class public final Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->m(Lio/reactivex/rxjava3/core/Observable;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1#3:108\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n*L\n69#1:104\n69#1:105,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoadPageModelsAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n1#3:108\n*S KotlinDebug\n*F\n+ 1 LoadPageModelsAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageModelsAction$generatePageModelArgsByTree$1\n*L\n69#1:104\n69#1:105,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;

.field public final synthetic f:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->f:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 3
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->access$getTagId$p(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->e:Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;->access$getTagId$p(Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->f:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "tagId"

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction$e;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method
