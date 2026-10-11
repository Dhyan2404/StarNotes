.class final Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/FullTextExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FullTextMatchExpression"
.end annotation


# instance fields
.field private final indexName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;->indexName:Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;->indexName:Ljava/lang/String;

    iget-object p0, p0, Lcom/couchbase/lite/FullTextExpression$FullTextMatchExpression;->text:Ljava/lang/String;

    const-string v1, "MATCH()"

    filled-new-array {v1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
