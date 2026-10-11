.class Lcom/couchbase/lite/DocContext;
.super Lcom/couchbase/lite/internal/DbContext;
.source "SourceFile"


# instance fields
.field private final c4Document:Lcom/couchbase/lite/internal/core/C4Document;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Document;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/DbContext;-><init>(Lcom/couchbase/lite/BaseDatabase;)V

    iput-object p2, p0, Lcom/couchbase/lite/DocContext;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    return-void
.end method


# virtual methods
.method public getDocument()Lcom/couchbase/lite/internal/core/C4Document;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/DocContext;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    return-object p0
.end method
