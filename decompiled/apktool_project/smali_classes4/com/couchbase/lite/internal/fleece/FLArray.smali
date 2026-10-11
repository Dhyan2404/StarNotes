.class public final Lcom/couchbase/lite/internal/fleece/FLArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

.field private final peer:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/FLArray;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "peer"

    invoke-static {p2, p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    iput-wide p2, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->peer:J

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    return-void
.end method

.method public static create(J)Lcom/couchbase/lite/internal/fleece/FLArray;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLArray;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLArray;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArray;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V

    return-object v0
.end method

.method public static unmanagedIterator(J)Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$UnmanagedFLArrayIterator;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLArray;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$UnmanagedFLArrayIterator;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V

    return-object v0
.end method


# virtual methods
.method public asArray()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArray;->asTypedArray()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public asTypedArray()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArray;->iterator()Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->close()V
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

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;->nCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(J)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->peer:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;->nGet(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLArray;)V

    return-object v0
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

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLArray;->peer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
