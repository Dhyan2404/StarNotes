.class public interface abstract Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nBeginArray(JJ)Z
.end method

.method public abstract nBeginDict(JJ)Z
.end method

.method public abstract nCreateFleeceEncoder()J
.end method

.method public abstract nCreateJSONEncoder()J
.end method

.method public abstract nEndArray(J)Z
.end method

.method public abstract nEndDict(J)Z
.end method

.method public abstract nFinish(J)[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nFinish2(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nFinish3(J)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nFinishJSON(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nFree(J)V
.end method

.method public abstract nReset(J)V
.end method

.method public abstract nWriteBool(JZ)Z
.end method

.method public abstract nWriteData(J[B)Z
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract nWriteDouble(JD)Z
.end method

.method public abstract nWriteFloat(JF)Z
.end method

.method public abstract nWriteInt(JJ)Z
.end method

.method public abstract nWriteKey(JLjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract nWriteNull(J)Z
.end method

.method public abstract nWriteString(JLjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract nWriteStringChars(J[C)Z
    .param p3    # [C
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract nWriteValue(JJ)Z
.end method
