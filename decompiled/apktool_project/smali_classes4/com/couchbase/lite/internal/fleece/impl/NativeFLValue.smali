.class public final Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native asArray(J)J
.end method

.method private static native asBool(J)Z
.end method

.method private static native asData(J)[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native asDict(J)J
.end method

.method private static native asDouble(J)D
.end method

.method private static native asFloat(J)F
.end method

.method private static native asInt(J)J
.end method

.method private static native asString(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native asUnsigned(J)J
.end method

.method private static native fromData(JJ)J
.end method

.method private static native fromTrustedData([B)J
.end method

.method private static native getType(J)I
.end method

.method private static native isDouble(J)Z
.end method

.method private static native isInteger(J)Z
.end method

.method private static native isUnsigned(J)Z
.end method

.method private static native json5toJson(Ljava/lang/String;)Ljava/lang/String;
    .param p0    # Ljava/lang/String;
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

.method private static native toJSON(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native toJSON5(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native toString(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method


# virtual methods
.method public nAsArray(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asArray(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nAsBool(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asBool(J)Z

    move-result p0

    return p0
.end method

.method public nAsData(J)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asData(J)[B

    move-result-object p0

    return-object p0
.end method

.method public nAsDict(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asDict(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nAsDouble(J)D
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public nAsFloat(J)F
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asFloat(J)F

    move-result p0

    return p0
.end method

.method public nAsInt(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asInt(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nAsString(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nAsUnsigned(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->asUnsigned(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFromData(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->fromData(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFromTrustedData([B)J
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->fromTrustedData([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetType(J)I
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->getType(J)I

    move-result p0

    return p0
.end method

.method public nIsDouble(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->isDouble(J)Z

    move-result p0

    return p0
.end method

.method public nIsInteger(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->isInteger(J)Z

    move-result p0

    return p0
.end method

.method public nIsUnsigned(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->isUnsigned(J)Z

    move-result p0

    return p0
.end method

.method public nJson5toJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
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

    invoke-static {p1}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->json5toJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nToJSON(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->toJSON(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nToJSON5(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->toJSON5(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nToString(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
