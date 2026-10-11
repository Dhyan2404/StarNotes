.class public final Lcom/couchbase/lite/ReplicatorStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTIVITY_LEVEL_FROM_C4:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/couchbase/lite/ReplicatorActivityLevel;",
            ">;"
        }
    .end annotation
.end field

.field static final INIT:Lcom/couchbase/lite/ReplicatorStatus;


# instance fields
.field private final activityLevel:Lcom/couchbase/lite/ReplicatorActivityLevel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final error:Lcom/couchbase/lite/CouchbaseLiteException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final progress:Lcom/couchbase/lite/ReplicatorProgress;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/couchbase/lite/ReplicatorStatus;

    sget-object v1, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v2, Lcom/couchbase/lite/ReplicatorProgress;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/couchbase/lite/ReplicatorProgress;-><init>(JJ)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorStatus;->INIT:Lcom/couchbase/lite/ReplicatorStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ReplicatorStatus;->ACTIVITY_LEVEL_FROM_C4:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorActivityLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatorProgress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/CouchbaseLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/couchbase/lite/ReplicatorStatus;->activityLevel:Lcom/couchbase/lite/ReplicatorActivityLevel;

    .line 8
    iput-object p2, p0, Lcom/couchbase/lite/ReplicatorStatus;->progress:Lcom/couchbase/lite/ReplicatorProgress;

    .line 9
    iput-object p3, p0, Lcom/couchbase/lite/ReplicatorStatus;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/ReplicatorStatus;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p1, Lcom/couchbase/lite/ReplicatorStatus;->activityLevel:Lcom/couchbase/lite/ReplicatorActivityLevel;

    iget-object v1, p1, Lcom/couchbase/lite/ReplicatorStatus;->progress:Lcom/couchbase/lite/ReplicatorProgress;

    iget-object p1, p1, Lcom/couchbase/lite/ReplicatorStatus;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getActivityLevel()I

    move-result v0

    invoke-static {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevelFromC4(I)Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    new-instance v1, Lcom/couchbase/lite/ReplicatorProgress;

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getProgressUnitsCompleted()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getProgressUnitsTotal()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/couchbase/lite/ReplicatorProgress;-><init>(JJ)V

    .line 3
    invoke-static {p1}, Lcom/couchbase/lite/ReplicatorStatus;->convertC4StatusError(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V

    return-void
.end method

.method private static convertC4StatusError(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 2
    .param p0    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getErrorDomain()I

    move-result v1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getErrorInternalInfo()I

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(III)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getActivityLevelFromC4(I)Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/ReplicatorStatus;->ACTIVITY_LEVEL_FROM_C4:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized replicator activity level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    sget-object p0, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    return-object p0
.end method


# virtual methods
.method public getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatorStatus;->activityLevel:Lcom/couchbase/lite/ReplicatorActivityLevel;

    return-object p0
.end method

.method public getError()Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatorStatus;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    return-object p0
.end method

.method public getProgress()Lcom/couchbase/lite/ReplicatorProgress;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatorStatus;->progress:Lcom/couchbase/lite/ReplicatorProgress;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status{activityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/ReplicatorStatus;->activityLevel:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/ReplicatorStatus;->progress:Lcom/couchbase/lite/ReplicatorProgress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatorStatus;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
