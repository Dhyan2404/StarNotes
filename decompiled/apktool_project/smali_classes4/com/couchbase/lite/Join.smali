.class public Lcom/couchbase/lite/Join;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Join$Type;,
        Lcom/couchbase/lite/Join$On;
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/couchbase/lite/DataSource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final type:Lcom/couchbase/lite/Join$Type;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Join$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    .line 3
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "data source"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/couchbase/lite/Join;->type:Lcom/couchbase/lite/Join$Type;

    .line 6
    iput-object p2, p0, Lcom/couchbase/lite/Join;->dataSource:Lcom/couchbase/lite/DataSource;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;Lcom/couchbase/lite/Join$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Join;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/Join;)Lcom/couchbase/lite/Join$Type;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Join;->type:Lcom/couchbase/lite/Join$Type;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/couchbase/lite/Join;)Lcom/couchbase/lite/DataSource;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Join;->dataSource:Lcom/couchbase/lite/DataSource;

    return-object p0
.end method

.method public static crossJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join;
    .locals 2
    .param p0    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "data source"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Join;

    sget-object v1, Lcom/couchbase/lite/Join$Type;->CROSS:Lcom/couchbase/lite/Join$Type;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/Join;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;)V

    return-object v0
.end method

.method public static innerJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;
    .locals 3
    .param p0    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "data source"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Join$On;

    sget-object v1, Lcom/couchbase/lite/Join$Type;->INNER:Lcom/couchbase/lite/Join$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/couchbase/lite/Join$On;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;Lcom/couchbase/lite/Join$1;)V

    return-object v0
.end method

.method public static join(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;
    .locals 0
    .param p0    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/Join;->innerJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;

    move-result-object p0

    return-object p0
.end method

.method public static leftJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;
    .locals 1
    .param p0    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "data source"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/couchbase/lite/Join;->leftOuterJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;

    move-result-object p0

    return-object p0
.end method

.method public static leftOuterJoin(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/Join$On;
    .locals 3
    .param p0    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "data source"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Join$On;

    sget-object v1, Lcom/couchbase/lite/Join$Type;->LEFT_OUTER:Lcom/couchbase/lite/Join$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/couchbase/lite/Join$On;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;Lcom/couchbase/lite/Join$1;)V

    return-object v0
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Join;->type:Lcom/couchbase/lite/Join$Type;

    invoke-virtual {v1}, Lcom/couchbase/lite/Join$Type;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JOIN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/Join;->dataSource:Lcom/couchbase/lite/DataSource;

    invoke-virtual {p0}, Lcom/couchbase/lite/DataSource;->asJSON()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
