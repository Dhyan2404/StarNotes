.class public abstract Lcom/couchbase/lite/internal/fleece/FLEncoder;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;,
        Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;,
        Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;,
        Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field protected final arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;JLcom/couchbase/lite/internal/fleece/FLEncoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/fleece/FLEncoder;[CLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeString$1([CLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeValue$9(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeValue$8(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/couchbase/lite/internal/fleece/FLEncoder;JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$beginArray$4(JLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static encodeMap(Ljava/util/Map;)[B
    .locals 5
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getManagedEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->write(Ljava/util/Map;)Z

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed encoding map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeValue$6(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/couchbase/lite/internal/fleece/FLEncoder;[BLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeData$2([BLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeString$0(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getJSONEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLEncoder;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-interface {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nCreateJSONEncoder()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;JLcom/couchbase/lite/internal/fleece/FLEncoder$1;)V

    return-object v0
.end method

.method public static getManagedEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLEncoder;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-interface {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nCreateFleeceEncoder()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V

    return-object v0
.end method

.method public static getUnmanagedEncoder(J)Lcom/couchbase/lite/internal/fleece/FLEncoder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLEncoder;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic h0(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeValue$7(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/fleece/FLEncoder;JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$beginDict$3(JLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$beginArray$4(JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nBeginArray(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$beginDict$3(JLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nBeginDict(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeData$2([BLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteData(J[B)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeKey$5(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteKey(JLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeString$0(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteString(JLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeString$1([CLjava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteError;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteStringChars(J[C)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeValue$6(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteValue(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeValue$7(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteValue(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeValue$8(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteValue(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$writeValue$9(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteNull(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteBool(JZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteInt(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteInt(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->longValue()J

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteInt(JJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteDouble(JD)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteFloat(JF)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteString(JLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeString([C)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, [B

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nWriteData(J[B)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->write(Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->write(Ljava/util/Map;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p1, Lcom/couchbase/lite/internal/fleece/FLValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLValue;

    new-instance v0, Lcom/sunia/HTREnginev2/c8g;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/c8g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->withContent(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_c
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    instance-of v0, p1, Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLDict;

    new-instance v0, Lcom/sunia/HTREnginev2/r7g;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/r7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->withContent(Lcom/couchbase/lite/internal/utils/Fn$Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_1

    :cond_e
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p1, Lcom/couchbase/lite/internal/fleece/FLArray;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLArray;

    new-instance v0, Lcom/sunia/HTREnginev2/s7g;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/s7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLArray;->withContent(Lcom/couchbase/lite/internal/utils/Fn$Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_2

    :cond_10
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of p2, p1, Lcom/couchbase/lite/internal/fleece/FLEncodable;

    if-eqz p2, :cond_12

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLEncodable;

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncodable;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->lambda$writeKey$5(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginArray(J)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/w7g;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/w7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public beginDict(J)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/y7g;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/y7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public abstract close()V
.end method

.method public endArray()Z
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/b8g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/b8g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public endDict()Z
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/a8g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/a8g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public finish()[B
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nFinish(J)[B

    move-result-object p0

    return-object p0
.end method

.method public finish2()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nFinish2(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public finish3()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nFinish3(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public getArg(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nReset(J)V

    return-void
.end method

.method public setArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/internal/fleece/FLEncoder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FLEncoder{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/util/List;)Z
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginArray(J)Z

    move-result p1

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginArray(J)Z

    move-result v2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endArray()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public write(Ljava/util/Map;)Z
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    .line 1
    invoke-virtual {p0, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    move-result p1

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    move-result v2

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endDict()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method

.method public writeData([B)Z
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/v7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/v7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public writeKey(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/u7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/u7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public writeNull()Z
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/x7g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/x7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public writeString(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/q7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/q7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public writeString([C)Z
    .locals 1
    .param p1    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/z7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/z7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;[C)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public writeValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/t7g;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/t7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
