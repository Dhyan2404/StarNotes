.class public abstract Lcom/couchbase/lite/MValueConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/MValueConverter$NativeValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isOldAttachment(Lcom/couchbase/lite/internal/fleece/FLDict;)Z
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "digest"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "length"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "stub"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "revpos"

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old style blob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->asDict()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private mValueToDictionary(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Lcom/couchbase/lite/MValueConverter$NativeValue;
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/fleece/MValue;",
            "Lcom/couchbase/lite/internal/fleece/MCollection;",
            ")",
            "Lcom/couchbase/lite/MValueConverter$NativeValue<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MCollection;->getContext()Lcom/couchbase/lite/internal/fleece/MContext;

    move-result-object v0

    instance-of v1, v0, Lcom/couchbase/lite/internal/DbContext;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/couchbase/lite/internal/DbContext;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v1

    const-string v2, "MValue"

    invoke-static {v1, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/fleece/FLValue;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLDict()Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object v1

    const-string v2, "@type"

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/FLValue;->asString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "blob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/couchbase/lite/MValueConverter;->isOldAttachment(Lcom/couchbase/lite/internal/fleece/FLDict;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/couchbase/lite/MValueConverter$NativeValue;

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MCollection;->hasMutableChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/couchbase/lite/MutableDictionary;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/couchbase/lite/Dictionary;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/Dictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/couchbase/lite/MValueConverter$NativeValue;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    :cond_3
    :goto_2
    new-instance p0, Lcom/couchbase/lite/MValueConverter$NativeValue;

    new-instance p1, Lcom/couchbase/lite/Blob;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/DbContext;->getDatabase()Lcom/couchbase/lite/BaseDatabase;

    move-result-object p2

    const-string v0, "database"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/BaseDatabase;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDict;->asDict()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/couchbase/lite/Blob;-><init>(Lcom/couchbase/lite/BaseDatabase;Ljava/util/Map;)V

    invoke-direct {p0, p1, v4}, Lcom/couchbase/lite/MValueConverter$NativeValue;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Context is not DbContext: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toNative(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Lcom/couchbase/lite/MValueConverter$NativeValue;
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/fleece/MValue;",
            "Lcom/couchbase/lite/internal/fleece/MCollection;",
            ")",
            "Lcom/couchbase/lite/MValueConverter$NativeValue<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/fleece/FLValue;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-instance p0, Lcom/couchbase/lite/MValueConverter$NativeValue;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/couchbase/lite/MValueConverter$NativeValue;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    const-string v0, "parent"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/internal/fleece/MCollection;

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/MValueConverter;->mValueToDictionary(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Lcom/couchbase/lite/MValueConverter$NativeValue;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/MValueConverter$NativeValue;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MCollection;->hasMutableChildren()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/couchbase/lite/MutableArray;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/MutableArray;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/couchbase/lite/Array;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/Array;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    :goto_1
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/MValueConverter$NativeValue;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/couchbase/lite/MValueConverter$NativeValue;

    new-instance p1, Lcom/couchbase/lite/Blob;

    const-string p2, "application/octet-stream"

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asData()[B

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/couchbase/lite/Blob;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, p1, v3}, Lcom/couchbase/lite/MValueConverter$NativeValue;-><init>(Ljava/lang/Object;Z)V

    return-object p0
.end method
