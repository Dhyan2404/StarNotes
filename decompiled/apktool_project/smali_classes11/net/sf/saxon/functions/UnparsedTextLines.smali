.class public Lnet/sf/saxon/functions/UnparsedTextLines;
.super Lnet/sf/saxon/functions/UnparsedTextFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# static fields
.field public static final synthetic h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/UnparsedTextFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/value/StringValue;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/lib/Feature;->STABLE_UNPARSED_TEXT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lnet/sf/saxon/functions/UnparsedText;->evalUnparsedText(Lnet/sf/saxon/value/StringValue;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lnet/sf/saxon/functions/UnparsedTextFunction;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/net/URI;

    move-result-object p0

    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;

    invoke-direct {p1, v0, p0, p3, p2}, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;-><init>(Ljava/io/LineNumberReader;Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p3}, Lnet/sf/saxon/functions/UnparsedTextFunction;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/net/URI;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, p2, v0}, Lnet/sf/saxon/tree/iter/UnparsedTextIterator;-><init>(Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-object p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/functions/UnparsedTextLines;->c(Lnet/sf/saxon/value/StringValue;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "FOUT1170"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    if-ne p0, v2, :cond_2

    const-string p0, "FOUT1200"

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FOUT1190"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_2
    throw p1
.end method
