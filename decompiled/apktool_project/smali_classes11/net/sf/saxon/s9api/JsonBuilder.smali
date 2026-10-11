.class public Lnet/sf/saxon/s9api/JsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/JsonBuilder;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public isLiberal()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/JsonBuilder;->b:Z

    return p0
.end method

.method public parseJson(Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/sf/saxon/Controller;

    iget-object v1, p0, Lnet/sf/saxon/s9api/JsonBuilder;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/Controller;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v0

    .line 2
    sget-object v1, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;

    .line 3
    invoke-static {v1, p1}, Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "liberal"

    .line 5
    iget-boolean p0, p0, Lnet/sf/saxon/s9api/JsonBuilder;->b:Z

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "escape"

    .line 6
    sget-object v2, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/ma/json/ParseJsonFn;->parse(Ljava/lang/String;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseJson(Ljava/lang/String;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/JsonBuilder;->parseJson(Ljava/io/Reader;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method

.method public setLiberal(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/JsonBuilder;->b:Z

    return-void
.end method
