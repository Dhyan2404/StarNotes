.class public final Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0007J\u0008\u0010\u001a\u001a\u00020\u0019H\u0007J\u0008\u0010\u001b\u001a\u00020\u0019H\u0007J\u0008\u0010\u001c\u001a\u00020\u0019H\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "documentId",
        "",
        "getDocumentId",
        "()Ljava/lang/String;",
        "setDocumentId",
        "(Ljava/lang/String;)V",
        "pageId",
        "getPageId",
        "setPageId",
        "status",
        "",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "timeStamp",
        "",
        "getTimeStamp",
        "()J",
        "setTimeStamp",
        "(J)V",
        "isEmebbed",
        "",
        "isExported",
        "isImported",
        "isSynced",
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
.field private documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->documentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->status:I

    return p0
.end method

.method public final getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->timeStamp:J

    return-wide v0
.end method

.method public final isEmebbed()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->status:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExported()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->status:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isImported()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSynced()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->isImported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->isExported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->status:I

    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->timeStamp:J

    return-void
.end method
