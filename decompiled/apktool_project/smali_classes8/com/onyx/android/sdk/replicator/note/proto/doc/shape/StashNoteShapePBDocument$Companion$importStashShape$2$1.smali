.class final Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion;->importStashShape(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "it",
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


# instance fields
.field final synthetic $copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->addShapeId(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    .line 6
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setPageUniqueId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setDocumentUniqueId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setGroupId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setResourceId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getLinkIdList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyLinkIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setLinkIdList(Ljava/util/List;)V

    .line 13
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getTagIdList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->ensureCopyTagIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setTagIdList(Ljava/util/List;)V

    .line 15
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->$copyNoteArgs:Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->addPendingShapeModel(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/StashNoteShapePBDocument$Companion$importStashShape$2$1;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object p0

    return-object p0
.end method
