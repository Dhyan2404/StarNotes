.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
        "",
        "()V",
        "tagList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "getTagList",
        "()Ljava/util/List;",
        "clone",
        "sdk-replicator_overseasRelease"
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
.field private final tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->tagList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->tagList:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->tagList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 5
    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean$clone$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean$clone$1;

    invoke-static {p0, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 7
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object p0

    return-object p0
.end method

.method public final getTagList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->tagList:Ljava/util/List;

    return-object p0
.end method
