.class public final Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;",
        "",
        "()V",
        "createModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "title",
        "",
        "pId",
        "styleAttr",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createModel(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "title"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "styleAttr"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setType(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStatus(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setParentId(Ljava/lang/String;)V

    return-object p0
.end method
