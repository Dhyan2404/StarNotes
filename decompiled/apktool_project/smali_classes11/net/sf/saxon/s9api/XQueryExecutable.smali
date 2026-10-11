.class public Lnet/sf/saxon/s9api/XQueryExecutable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/s9api/Processor;

.field public b:Lnet/sf/saxon/query/XQueryExpression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    return-void
.end method


# virtual methods
.method public explain(Lnet/sf/saxon/s9api/Destination;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    new-instance v2, Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainDefaultSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/query/XQueryExpression;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getResultCardinality()Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->getExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    return-object p0
.end method

.method public getResultItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryExpression;->getExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v1
.end method

.method public getUnderlyingCompiledQuery()Lnet/sf/saxon/query/XQueryExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    return-object p0
.end method

.method public isUpdateQuery()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryExpression;->isUpdateQuery()Z

    move-result p0

    return p0
.end method

.method public load()Lnet/sf/saxon/s9api/XQueryEvaluator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/s9api/XQueryEvaluator;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XQueryExecutable;->b:Lnet/sf/saxon/query/XQueryExpression;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/query/XQueryExpression;)V

    return-object v0
.end method
