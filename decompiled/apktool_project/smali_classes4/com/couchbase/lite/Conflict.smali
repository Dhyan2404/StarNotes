.class public Lcom/couchbase/lite/Conflict;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final localDoc:Lcom/couchbase/lite/Document;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final remoteDoc:Lcom/couchbase/lite/Document;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Conflict;->localDoc:Lcom/couchbase/lite/Document;

    iput-object p2, p0, Lcom/couchbase/lite/Conflict;->remoteDoc:Lcom/couchbase/lite/Document;

    return-void
.end method


# virtual methods
.method public getDocumentId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Conflict;->localDoc:Lcom/couchbase/lite/Document;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/Conflict;->remoteDoc:Lcom/couchbase/lite/Document;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLocalDocument()Lcom/couchbase/lite/Document;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Conflict;->localDoc:Lcom/couchbase/lite/Document;

    return-object p0
.end method

.method public getRemoteDocument()Lcom/couchbase/lite/Document;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Conflict;->remoteDoc:Lcom/couchbase/lite/Document;

    return-object p0
.end method
