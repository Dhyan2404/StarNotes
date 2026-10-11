.class final Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes;->exportReferenceToTargetShapes(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/List;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
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
.field final synthetic $newRevisionId:Ljava/lang/String;

.field final synthetic $shapeIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;->$newRevisionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;->$shapeIdMap:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;->$newRevisionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setRevisionId(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/utils/ReferenceShapes$exportReferenceToTargetShapes$revisionShapeIdMap$2;->$shapeIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
