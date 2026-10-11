.class final Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->deletePenArgs(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPencilBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n1549#2:201\n1620#2,3:202\n*S KotlinDebug\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1\n*L\n123#1:201\n123#1:202,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "set",
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPencilBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n1549#2:201\n1620#2,3:202\n*S KotlinDebug\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1\n*L\n123#1:201\n123#1:202,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $boxId:Ljava/lang/String;

.field final synthetic $penItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;->$penItems:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;->$boxId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;->invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;->$penItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    .line 6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;->$boxId:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->access$getPenBox(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 10
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1$1;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1$1;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->removeIf(Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)Z

    .line 11
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->setPenList(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 13
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->setSelectedId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
