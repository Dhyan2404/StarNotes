.class public Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;,
        Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$TagStatus;,
        Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$TagType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 52\u00020\u00012\u00020\u0002:\u0003567B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\"\u001a\u00020\u0000H\u0016J\u0006\u0010#\u001a\u00020\u0005J\u0008\u0010$\u001a\u0004\u0018\u00010\u0005J\u0006\u0010%\u001a\u00020\u0008J\u0008\u0010&\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\'\u001a\u0004\u0018\u00010\u0005J\u0006\u0010(\u001a\u00020\u0008J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020,2\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010.\u001a\u00020,2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010/\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u00100\u001a\u00020,2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u00101\u001a\u00020,2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u000e\u00102\u001a\u00020,2\u0006\u0010\u0016\u001a\u00020\u0008J\u000e\u00103\u001a\u00020,2\u0006\u00104\u001a\u00020\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "",
        "()V",
        "content",
        "",
        "documentId",
        "modeType",
        "",
        "orderIndex",
        "",
        "getOrderIndex",
        "()F",
        "setOrderIndex",
        "(F)V",
        "pageUniqueId",
        "parentId",
        "revisionId",
        "getRevisionId",
        "()Ljava/lang/String;",
        "setRevisionId",
        "(Ljava/lang/String;)V",
        "status",
        "style",
        "Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "getStyle",
        "()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;",
        "setStyle",
        "(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V",
        "type",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "clone",
        "getContent",
        "getDocumentId",
        "getModeType",
        "getPageUniqueId",
        "getParentId",
        "getStatus",
        "isEnabled",
        "",
        "resetRevisionId",
        "",
        "setContent",
        "setDocumentId",
        "setModeType",
        "setPageUniqueId",
        "setParentId",
        "setStatus",
        "updateModelField",
        "other",
        "Companion",
        "TagStatus",
        "TagType",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modeType:I

.field private orderIndex:F

.field private pageUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->content:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->modeType:I

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->orderIndex:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->clone()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->clone()Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    move-result-object p0

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->modeType:I

    return p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->orderIndex:F

    return p0
.end method

.method public final getPageUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->pageUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->status:I

    return p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->type:I

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetRevisionId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->content:Ljava/lang/String;

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->modeType:I

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->orderIndex:F

    return-void
.end method

.method public final setPageUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->pageUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->status:I

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->type:I

    return-void
.end method

.method public final updateModelField(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
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

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->documentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->documentId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->parentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->parentId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->pageUniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->pageUniqueId:Ljava/lang/String;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->content:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->status:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->status:I

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->modeType:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->modeType:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->revisionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->revisionId:Ljava/lang/String;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->type:I

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->type:I

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->style:Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->orderIndex:F

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->orderIndex:F

    return-void
.end method
