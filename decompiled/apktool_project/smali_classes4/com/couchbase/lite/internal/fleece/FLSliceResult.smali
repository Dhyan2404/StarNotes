.class public abstract Lcom/couchbase/lite/internal/fleece/FLSliceResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;,
        Lcom/couchbase/lite/internal/fleece/FLSliceResult$ManagedFLSliceResult;,
        Lcom/couchbase/lite/internal/fleece/FLSliceResult$UnmanagedFLSliceResult;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;


# instance fields
.field final base:J

.field private impl:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final size:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/impl/NativeFLSliceResult;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLSliceResult;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJ)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->impl:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    .line 4
    iput-wide p2, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->base:J

    const-string p1, "size"

    .line 5
    invoke-static {p4, p5, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->size:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJLcom/couchbase/lite/internal/fleece/FLSliceResult$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;-><init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJ)V

    return-void
.end method

.method public static createManagedSlice(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/couchbase/lite/internal/fleece/FLSliceResult$ManagedFLSliceResult;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/fleece/FLSliceResult$ManagedFLSliceResult;-><init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJ)V

    return-object v6
.end method

.method public static createTestSlice()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->createManagedSlice(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object v0

    return-object v0
.end method

.method public static createUnmanagedSlice(JJ)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/couchbase/lite/internal/fleece/FLSliceResult$UnmanagedFLSliceResult;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/fleece/FLSliceResult$UnmanagedFLSliceResult;-><init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJ)V

    return-object v6
.end method


# virtual methods
.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->impl:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->impl:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->release(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBase()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->base:J

    return-wide v0
.end method

.method public getContent()[B
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->impl:Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->base:J

    iget-wide v3, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;->nGetBuf(JJ)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use a closed slice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->size:J

    return-wide v0
.end method

.method public abstract release(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;)V
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceResult{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @0x0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->base:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
