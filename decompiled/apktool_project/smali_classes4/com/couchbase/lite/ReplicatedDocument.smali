.class public final Lcom/couchbase/lite/ReplicatedDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final docId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile error:Lcom/couchbase/lite/CouchbaseLiteException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final flags:Ljava/util/EnumSet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/DocumentFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final scope:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/couchbase/lite/CouchbaseLiteException;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/CouchbaseLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ReplicatedDocument;->scope:Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/ReplicatedDocument;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/couchbase/lite/ReplicatedDocument;->docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/couchbase/lite/ReplicatedDocument;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    const-class p1, Lcom/couchbase/lite/DocumentFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/ReplicatedDocument;->flags:Ljava/util/EnumSet;

    const/4 p0, 0x1

    invoke-static {p4, p0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/couchbase/lite/DocumentFlag;->DELETED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 p0, 0x80

    invoke-static {p4, p0}, Lcom/couchbase/lite/internal/core/C4Constants;->hasFlags(II)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/couchbase/lite/DocumentFlag;->ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getCollection()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getCollectionScope()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public getError()Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    return-object p0
.end method

.method public getFlags()Ljava/util/EnumSet;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/DocumentFlag;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->flags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->docId:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public setError(Lcom/couchbase/lite/CouchbaseLiteException;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/CouchbaseLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/ReplicatedDocument;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplicatedDocument{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/ReplicatedDocument;->docId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatedDocument;->error:Lcom/couchbase/lite/CouchbaseLiteException;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
