.class public final Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
.super Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"\u0004\u0008 \u0010\u0019R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010\u0019R\u001a\u0010$\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001b\"\u0004\u0008&\u0010\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0017\"\u0004\u0008(\u0010\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "()V",
        "title",
        "",
        "pageIndex",
        "",
        "(Ljava/lang/String;I)V",
        "expandState",
        "",
        "getExpandState",
        "()Ljava/lang/Boolean;",
        "setExpandState",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "orderIndex",
        "",
        "getOrderIndex",
        "()F",
        "setOrderIndex",
        "(F)V",
        "pageId",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "parentId",
        "getParentId",
        "setParentId",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "status",
        "getStatus",
        "setStatus",
        "getTitle",
        "setTitle",
        "beforeSave",
        "",
        "resetOrderIndex",
        "resetRevisionId",
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
.field private expandState:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private orderIndex:F

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIndex:I

.field private parentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->title:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageId:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->orderIndex:F

    .line 5
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageId:Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->orderIndex:F

    .line 9
    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->revisionId:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->title:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageIndex:I

    return-void
.end method


# virtual methods
.method public beforeSave()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    return-void
.end method

.method public final getExpandState()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->expandState:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getOrderIndex()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->orderIndex:F

    return p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageIndex:I

    return p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getRevisionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->revisionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->status:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final resetOrderIndex()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->orderIndex:F

    return-void
.end method

.method public final resetRevisionId()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setExpandState(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->expandState:Ljava/lang/Boolean;

    return-void
.end method

.method public final setOrderIndex(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->orderIndex:F

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->pageIndex:I

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->parentId:Ljava/lang/String;

    return-void
.end method

.method public final setRevisionId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->revisionId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->status:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->title:Ljava/lang/String;

    return-void
.end method
