.class public final Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;
.super Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;",
        "()V",
        "bean",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V",
        "docCreateAt",
        "",
        "getDocCreateAt",
        "()J",
        "setDocCreateAt",
        "(J)V",
        "docName",
        "",
        "getDocName",
        "()Ljava/lang/String;",
        "setDocName",
        "(Ljava/lang/String;)V",
        "docUpdatedAt",
        "getDocUpdatedAt",
        "setDocUpdatedAt",
        "hasEncryption",
        "",
        "getHasEncryption",
        "()Z",
        "setHasEncryption",
        "(Z)V",
        "orderIndex",
        "",
        "getOrderIndex",
        "()F",
        "setOrderIndex",
        "(F)V",
        "scene",
        "",
        "getScene",
        "()I",
        "setScene",
        "(I)V",
        "updateModelField",
        "",
        "other",
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
.field private docCreateAt:J

.field private docName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private docUpdatedAt:J

.field private hasEncryption:Z

.field private orderIndex:F

.field private scene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docName:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->orderIndex:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->scene:I

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docName:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->orderIndex:F

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->scene:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V

    return-void
.end method


# virtual methods
.method public final getDocCreateAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docCreateAt:J

    return-wide v0
.end method

.method public final getDocName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docUpdatedAt:J

    return-wide v0
.end method

.method public final getHasEncryption()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->hasEncryption:Z

    return p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->orderIndex:F

    return p0
.end method

.method public final getScene()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->scene:I

    return p0
.end method

.method public final setDocCreateAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docCreateAt:J

    return-void
.end method

.method public final setDocName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docName:Ljava/lang/String;

    return-void
.end method

.method public final setDocUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->docUpdatedAt:J

    return-void
.end method

.method public final setHasEncryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->hasEncryption:Z

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->orderIndex:F

    return-void
.end method

.method public final setScene(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;->scene:I

    return-void
.end method

.method public final updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getDbId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setDbId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setDocumentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setPageIndex(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setTagId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setDocTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getRevisionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setRevisionId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getPageAllTagIdList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setPageAllTagIdList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    return-void
.end method
