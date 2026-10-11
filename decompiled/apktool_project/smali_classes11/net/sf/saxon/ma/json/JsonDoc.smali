.class public Lnet/sf/saxon/ma/json/JsonDoc;
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOUT1170"

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Lnet/sf/saxon/functions/UnparsedTextFunction;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/net/URI;

    move-result-object v1

    const-string v4, "UTF-8"

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/Controller;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object v5

    invoke-interface {v5, v1, v4, v2}, Lnet/sf/saxon/lib/UnparsedTextURIResolver;->resolve(Ljava/net/URI;Ljava/lang/String;Lnet/sf/saxon/Configuration;)Ljava/io/Reader;

    move-result-object v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v3, v2}, Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/ma/json/ParseJsonFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/OptionsParameter;->getDefaultOptions()Ljava/util/Map;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lnet/sf/saxon/ma/json/ParseJsonFn;->parse(Ljava/lang/String;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v1, p0}, Lnet/sf/saxon/functions/UnparsedTextFunction;->handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown encoding "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "FOUT1190"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to resolve json-doc() URI "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0
.end method
