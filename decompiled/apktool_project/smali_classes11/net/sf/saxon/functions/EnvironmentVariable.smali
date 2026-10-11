.class public Lnet/sf/saxon/functions/EnvironmentVariable;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/value/StringValue;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Optional<",
            "Lnet/sf/saxon/value/StringValue;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->ENVIRONMENT_VARIABLE_RESOLVER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Lnet/sf/saxon/lib/EnvironmentVariableResolver;->getEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/EnvironmentVariable;->a(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0
.end method
