.class final Lcom/couchbase/lite/CBLConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBoolean(Ljava/lang/Object;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public static asDouble(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)D
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDouble()D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public static asFloat(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)F
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFloat()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static asInteger(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)I
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static asLong(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)J
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public static asNumber(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Ljava/lang/Number;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->castOrNull(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method
