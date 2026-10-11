.class public final Lcom/couchbase/lite/CouchbaseLiteException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final code:I

.field private final domain:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final info:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 6
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-static {p1, p2}, Lcom/couchbase/lite/CouchbaseLiteException;->getErrorMessage(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "CouchbaseLite"

    .line 10
    :goto_0
    iput-object p3, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    if-lez p4, :cond_1

    goto :goto_1

    :cond_1
    const/16 p4, 0xa

    .line 11
    :goto_1
    iput p4, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    .line 12
    iput-object p5, p0, Lcom/couchbase/lite/CouchbaseLiteException;->info:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 3
    .param p0    # Lcom/couchbase/lite/LiteCoreException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v0, "Unknown LiteCore exception"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/couchbase/lite/LiteCoreException;->domain:I

    iget v1, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 2
    .param p0    # Lcom/couchbase/lite/LiteCoreException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/couchbase/lite/LiteCoreException;->domain:I

    iget v1, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    invoke-static {v0, v1, p1, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getErrorMessage(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z
    .locals 2
    .param p0    # Lcom/couchbase/lite/CouchbaseLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const-string v0, "CouchbaseLite"

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toCouchbaseLiteException(III)Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4;->getMessage(III)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0, p1, v0, v0}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    instance-of v0, p3, Lcom/couchbase/lite/LiteCoreException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Lite Core exception"

    invoke-static {v0, v1, p3}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "CouchbaseLite"

    packed-switch p0, :pswitch_data_0

    .line 4
    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Unable to map C4Error(%d,%d) to an CouchbaseLiteException"

    .line 7
    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    add-int/lit16 p1, p1, 0x2710

    goto :goto_0

    :pswitch_1
    add-int/lit16 p1, p1, 0x1388

    goto :goto_0

    :pswitch_2
    const-string v0, "CouchbaseLite.Fleece"

    goto :goto_0

    :pswitch_3
    const-string v0, "CouchbaseLite.SQLite"

    goto :goto_0

    :pswitch_4
    const-string v0, "POSIXErrorDomain"

    :goto_0
    :pswitch_5
    move v7, p1

    move-object v6, v0

    .line 8
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;ILjava/util/Map;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/CouchbaseLiteException;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/CouchbaseLiteException;

    iget v1, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    iget v3, p1, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    iget-object p1, p1, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    return p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getInfo()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
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

    iget-object p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->info:Ljava/util/Map;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")  ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/couchbase/lite/internal/core/CBLVersion;->getVersionInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget p0, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CouchbaseLiteException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/CouchbaseLiteException;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/CouchbaseLiteException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
