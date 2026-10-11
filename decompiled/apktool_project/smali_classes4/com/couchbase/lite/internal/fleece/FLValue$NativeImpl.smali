.class public interface abstract Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nAsArray(J)J
.end method

.method public abstract nAsBool(J)Z
.end method

.method public abstract nAsData(J)[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract nAsDict(J)J
.end method

.method public abstract nAsDouble(J)D
.end method

.method public abstract nAsFloat(J)F
.end method

.method public abstract nAsInt(J)J
.end method

.method public abstract nAsString(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract nAsUnsigned(J)J
.end method

.method public abstract nFromData(JJ)J
.end method

.method public abstract nFromTrustedData([B)J
.end method

.method public abstract nGetType(J)I
.end method

.method public abstract nIsDouble(J)Z
.end method

.method public abstract nIsInteger(J)Z
.end method

.method public abstract nIsUnsigned(J)Z
.end method

.method public abstract nJson5toJson(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nToJSON(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract nToJSON5(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract nToString(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
