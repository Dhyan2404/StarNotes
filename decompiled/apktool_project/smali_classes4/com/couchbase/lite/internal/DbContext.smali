.class public Lcom/couchbase/lite/internal/DbContext;
.super Lcom/couchbase/lite/internal/fleece/MContext;
.source "SourceFile"


# instance fields
.field private final db:Lcom/couchbase/lite/BaseDatabase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/BaseDatabase;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/BaseDatabase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/fleece/MContext;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/DbContext;->db:Lcom/couchbase/lite/BaseDatabase;

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/couchbase/lite/BaseDatabase;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/DbContext;->db:Lcom/couchbase/lite/BaseDatabase;

    return-object p0
.end method
