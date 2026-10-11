.class public final Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/tz;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    const-string v2, "query enumerator peer"

    invoke-static {p0, p1, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p0

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;-><init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->lambda$closePeer$1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->lambda$getColumns$0(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closePeer$1(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getColumns$0(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;->nGetColumns(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArray;->unmanagedIterator(J)Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->closePeer(Lcom/couchbase/lite/LogDomain;)V

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
    sget-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getColumns()Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/vz;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    return-object p0
.end method

.method public getMissingColumns()J
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wz;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/wz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public next()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->impl:Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uz;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/uz;-><init>(Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
