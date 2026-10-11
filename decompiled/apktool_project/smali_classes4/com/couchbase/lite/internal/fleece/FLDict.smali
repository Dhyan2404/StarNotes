.class public Lcom/couchbase/lite/internal/fleece/FLDict;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

.field private final peer:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/FLDict;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    const-string p1, "peer"

    invoke-static {p2, p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->peer:J

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/fleece/FLDict;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLDict;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLDict;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLDict;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;J)V

    return-object v0
.end method


# virtual methods
.method public asDict()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->iterator()Lcom/couchbase/lite/internal/fleece/FLDictIterator;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
.end method

.method public count()J
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;->nCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    iget-wide v2, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->peer:J

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-interface {v1, v2, v3, p0}, Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;->nGet(J[B)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public iterator()Lcom/couchbase/lite/internal/fleece/FLDictIterator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLDictIterator;

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->impl:Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;-><init>(Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLDict;)V

    return-object v0
.end method

.method public toFLValue()Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->peer:J

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public withContent(Lcom/couchbase/lite/internal/utils/Fn$Function;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$Function<",
            "Ljava/lang/Long;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLDict;->peer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
