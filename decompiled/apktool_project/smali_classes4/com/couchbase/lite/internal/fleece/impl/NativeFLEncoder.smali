.class public final Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native beginArray(JJ)Z
.end method

.method private static native beginDict(JJ)Z
.end method

.method private static native endArray(J)Z
.end method

.method private static native endDict(J)Z
.end method

.method private static native finish(J)[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native finish2(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native finish3(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native finishJSON(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native free(J)V
.end method

.method private static native newFleeceEncoder()J
.end method

.method private static native newJSONEncoder()J
.end method

.method private static native reset(J)V
.end method

.method private static native writeBool(JZ)Z
.end method

.method private static native writeData(J[B)Z
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native writeDouble(JD)Z
.end method

.method private static native writeFloat(JF)Z
.end method

.method private static native writeInt(JJ)Z
.end method

.method private static native writeKey(JLjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native writeNull(J)Z
.end method

.method private static native writeString(JLjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native writeStringChars(J[C)Z
.end method

.method private static native writeValue(JJ)Z
.end method


# virtual methods
.method public nBeginArray(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->beginArray(JJ)Z

    move-result p0

    return p0
.end method

.method public nBeginDict(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->beginDict(JJ)Z

    move-result p0

    return p0
.end method

.method public nCreateFleeceEncoder()J
    .locals 2

    invoke-static {}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->newFleeceEncoder()J

    move-result-wide v0

    return-wide v0
.end method

.method public nCreateJSONEncoder()J
    .locals 2

    invoke-static {}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->newJSONEncoder()J

    move-result-wide v0

    return-wide v0
.end method

.method public nEndArray(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->endArray(J)Z

    move-result p0

    return p0
.end method

.method public nEndDict(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->endDict(J)Z

    move-result p0

    return p0
.end method

.method public nFinish(J)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->finish(J)[B

    move-result-object p0

    return-object p0
.end method

.method public nFinish2(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->finish2(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public nFinish3(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->finish3(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public nFinishJSON(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->finishJSON(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->free(J)V

    return-void
.end method

.method public nReset(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->reset(J)V

    return-void
.end method

.method public nWriteBool(JZ)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeBool(JZ)Z

    move-result p0

    return p0
.end method

.method public nWriteData(J[B)Z
    .locals 0
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeData(J[B)Z

    move-result p0

    return p0
.end method

.method public nWriteDouble(JD)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeDouble(JD)Z

    move-result p0

    return p0
.end method

.method public nWriteFloat(JF)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeFloat(JF)Z

    move-result p0

    return p0
.end method

.method public nWriteInt(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeInt(JJ)Z

    move-result p0

    return p0
.end method

.method public nWriteKey(JLjava/lang/String;)Z
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeKey(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nWriteNull(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeNull(J)Z

    move-result p0

    return p0
.end method

.method public nWriteString(JLjava/lang/String;)Z
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeString(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nWriteStringChars(J[C)Z
    .locals 0
    .param p3    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeStringChars(J[C)Z

    move-result p0

    return p0
.end method

.method public nWriteValue(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLEncoder;->writeValue(JJ)Z

    move-result p0

    return p0
.end method
