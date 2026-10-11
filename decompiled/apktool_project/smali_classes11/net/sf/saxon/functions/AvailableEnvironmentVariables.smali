.class public Lnet/sf/saxon/functions/AvailableEnvironmentVariables;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/lib/Feature;->ENVIRONMENT_VARIABLE_RESOLVER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/lib/EnvironmentVariableResolver;->getAvailableEnvironmentVariables()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, p2}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/AvailableEnvironmentVariables$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/AvailableEnvironmentVariables$a;-><init>(Lnet/sf/saxon/functions/AvailableEnvironmentVariables;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method
