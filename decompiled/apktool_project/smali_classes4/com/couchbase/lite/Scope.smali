.class public Lcom/couchbase/lite/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "_default"


# instance fields
.field private final db:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "_default"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/Scope;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Database;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/Database;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/Scope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Scope;

    iget-object v1, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    iget-object v3, p1, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/couchbase/lite/AbstractDatabase;->getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCollections()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/AbstractDatabase;->getCollections(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Scope;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/Scope;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
