.class public abstract Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;,
        Lcom/couchbase/lite/internal/fleece/FLArrayIterator$UnmanagedFLArrayIterator;
    }
.end annotation


# instance fields
.field protected final impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;Ljava/lang/Long;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(Ljava/lang/Long;)V

    .line 2
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->lambda$getValueAt$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->lambda$getValue$1(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getValue$1(Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;->nGetValue(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$getValueAt$0(ILjava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;->nGetValueAt(JI)J

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


# virtual methods
.method public abstract close()V
.end method

.method public getValue()Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/g7g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/g7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public getValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/h7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/h7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;I)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public next()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/i7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/i7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    return-void
.end method
