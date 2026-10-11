.class final Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updatePencilBox(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;)V
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
    value = "SMAP\nPencilBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n350#2,7:201\n*S KotlinDebug\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1\n*L\n106#1:201,7\n*E\n"
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
        "SMAP\nPencilBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n350#2,7:201\n*S KotlinDebug\n*F\n+ 1 PencilBoxManager.kt\ncom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1\n*L\n106#1:201,7\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $boxId:Ljava/lang/String;

.field final synthetic $penItem:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->$boxId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->$penItem:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->$boxId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->access$getPenBox(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->$penItem:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    .line 7
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 8
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;->$penItem:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-interface {v0, v3, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->setPenList(Ljava/util/List;)V

    return-void
.end method
