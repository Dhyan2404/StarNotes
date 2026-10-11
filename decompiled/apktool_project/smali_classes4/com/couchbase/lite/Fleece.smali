.class final Lcom/couchbase/lite/Fleece;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SUPPORTED_TYPES:Ljava/lang/String; = "MutableDictionary, Dictionary, Map, MutableArray, Array, List, Blob, Date, String, Number, Boolean and null"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCBLObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_6

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/couchbase/lite/Blob;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/couchbase/lite/MutableArray;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/couchbase/lite/MutableDictionary;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/couchbase/lite/MutableDictionary;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/MutableDictionary;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/couchbase/lite/Dictionary;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/couchbase/lite/Dictionary;

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->toMutable()Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/couchbase/lite/MutableArray;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/MutableArray;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/couchbase/lite/Array;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/couchbase/lite/Array;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->toMutable()Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toJSONString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MutableDictionary, Dictionary, Map, MutableArray, Array, List, Blob, Date, String, Number, Boolean and null"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "InvalidCouchbaseObjType"

    invoke-static {v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public static toObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/couchbase/lite/Dictionary;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/couchbase/lite/Dictionary;

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->toMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/couchbase/lite/Array;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/couchbase/lite/Array;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->toList()Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static willMutate(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Z
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    instance-of v1, p0, Lcom/couchbase/lite/Dictionary;

    if-nez v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    instance-of v0, p0, Lcom/couchbase/lite/Array;

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
