.class public abstract Lcom/couchbase/lite/internal/BaseCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final db:Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    return-void
.end method


# virtual methods
.method public abstract createFilterDocument(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLDict;)Lcom/couchbase/lite/Document;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
