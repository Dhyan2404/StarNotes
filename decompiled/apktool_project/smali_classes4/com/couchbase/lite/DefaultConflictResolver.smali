.class Lcom/couchbase/lite/DefaultConflictResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ConflictResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Conflict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getLocalDocument()Lcom/couchbase/lite/Document;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/Conflict;->getRemoteDocument()Lcom/couchbase/lite/Document;

    move-result-object p1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Document;->compareAge(Lcom/couchbase/lite/Document;)I

    move-result v0

    if-lez v0, :cond_1

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    move-object p0, p1

    :cond_5
    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
