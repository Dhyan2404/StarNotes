.class public final Lcom/couchbase/lite/internal/core/C4IndexUpdater;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;


# instance fields
.field private final count:I

.field private final impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-interface {p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;->nGetCount(J)J

    move-result-wide p1

    const-string p3, "count"

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertInt(JLjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->count:I

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/core/C4IndexUpdater;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4IndexUpdater;JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->lambda$skipVector$2(JLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4IndexUpdater;ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->lambda$getValueAt$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getValueAt$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long p1, p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;->nGetValueAt(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$setVector$1(J[FLjava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v3, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;->nSetVectorAt(JJ[F)V

    return-void
.end method

.method private synthetic lambda$skipVector$2(JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;->nSkipVectorAt(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4IndexUpdater;J[FLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->lambda$setVector$1(J[FLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dz;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/dz;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public finish()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Database.lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->impl:Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fz;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/fz;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->close()V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->count:I

    return p0
.end method

.method public getValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "IndexUpdateImpl.lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/cz;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cz;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public setVector(J[F)V
    .locals 1
    .param p3    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "IndexUpdateImpl.lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ez;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/ez;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;J[F)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public skipVector(J)Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "IndexUpdateImpl.lock"
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bz;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/bz;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nonNullWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
