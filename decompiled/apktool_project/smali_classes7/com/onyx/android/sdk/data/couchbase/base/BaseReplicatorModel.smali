.class public Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel$SyncStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u001d\u001a\u00020\u0000H\u0016J\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "",
        "()V",
        "createdAt",
        "",
        "getCreatedAt",
        "()J",
        "setCreatedAt",
        "(J)V",
        "dbId",
        "",
        "getDbId",
        "()Ljava/lang/String;",
        "setDbId",
        "(Ljava/lang/String;)V",
        "uniqueId",
        "getUniqueId",
        "setUniqueId",
        "updatedAt",
        "getUpdatedAt",
        "setUpdatedAt",
        "user",
        "getUser",
        "setUser",
        "beforeSave",
        "",
        "ensureCreatedAt",
        "ensureDbId",
        "id",
        "ensureUniqueIdExist",
        "ensureUpdatedAt",
        "forceUpdateTime",
        "forceUpdatedAt",
        "SyncStatus",
        "sdk-data_release"
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
.field private createdAt:J

.field private dbId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private uniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updatedAt:J

.field private user:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->uniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beforeSave()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureCreatedAt()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    return-void
.end method

.method public final ensureCreatedAt()V
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->createdAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->createdAt:J

    :cond_0
    return-void
.end method

.method public final ensureDbId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->dbId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->dbId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->uniqueId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final ensureUpdatedAt()V
    .locals 4

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    :cond_0
    return-void
.end method

.method public final forceUpdateTime()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->createdAt:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    return-void
.end method

.method public final forceUpdatedAt()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    return-void
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->createdAt:J

    return-wide v0
.end method

.method public final getDbId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->dbId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    return-wide v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->user:Ljava/lang/String;

    return-object p0
.end method

.method public final setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->createdAt:J

    return-void
.end method

.method public final setDbId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->dbId:Ljava/lang/String;

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setUpdatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->updatedAt:J

    return-void
.end method

.method public final setUser(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->user:Ljava/lang/String;

    return-void
.end method
