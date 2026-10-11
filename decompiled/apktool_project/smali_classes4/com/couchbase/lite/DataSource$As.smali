.class public Lcom/couchbase/lite/DataSource$As;
.super Lcom/couchbase/lite/DataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "As"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/DataSource;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/DataSource$1;)V

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/couchbase/lite/DataSource;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "alias"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/DataSource;->alias:Ljava/lang/String;

    return-object p0
.end method
