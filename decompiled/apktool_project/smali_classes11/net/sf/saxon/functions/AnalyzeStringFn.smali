.class public Lnet/sf/saxon/functions/AnalyzeStringFn;
.super Lnet/sf/saxon/functions/RegexFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/AnalyzeStringFn$b;,
        Lnet/sf/saxon/functions/AnalyzeStringFn$c;
    }
.end annotation


# instance fields
.field public i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/functions/RegexFunction;-><init>()V

    new-instance v0, Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/AnalyzeStringFn$c;-><init>(Lnet/sf/saxon/functions/AnalyzeStringFn$a;)V

    iput-object v0, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    return-void
.end method


# virtual methods
.method public allowRegexMatchingEmptyString()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized b(Lnet/sf/saxon/Configuration;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    new-instance p2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    const-string v2, "analyze-string-result"

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->a:Lnet/sf/saxon/om/NodeName;

    iget-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    new-instance p2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    const-string v2, "non-match"

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->b:Lnet/sf/saxon/om/NodeName;

    iget-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    new-instance p2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    const-string v2, "match"

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->c:Lnet/sf/saxon/om/NodeName;

    iget-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    new-instance p2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v0, ""

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    const-string v2, "group"

    invoke-direct {p2, v0, v1, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->d:Lnet/sf/saxon/om/NodeName;

    iget-object p1, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    new-instance p2, Lnet/sf/saxon/om/NoNamespaceName;

    const-string v0, "nr"

    invoke-direct {p2, v0}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->e:Lnet/sf/saxon/om/NodeName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/NodeInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/RegexFunction;->getRegularExpression([Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/regex/RegularExpression;

    move-result-object p2

    .line 6
    invoke-interface {p2, v1}, Lnet/sf/saxon/regex/RegularExpression;->analyze(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/regex/RegexIterator;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/functions/AnalyzeStringFn;->b(Lnet/sf/saxon/Configuration;Z)V

    .line 8
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    .line 9
    new-instance v1, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v1, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    .line 10
    new-instance v2, Lnet/sf/saxon/functions/AnalyzeStringFn$b;

    iget-object v3, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    invoke-direct {v2, v1, v3}, Lnet/sf/saxon/functions/AnalyzeStringFn$b;-><init>(Lnet/sf/saxon/event/ComplexContentOutputter;Lnet/sf/saxon/functions/AnalyzeStringFn$c;)V

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/saxon/event/Builder;->setBaseURI(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    .line 13
    iget-object v3, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    iget-object v4, v3, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->a:Lnet/sf/saxon/om/NodeName;

    iget-object v3, v3, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->f:Lnet/sf/saxon/type/SchemaType;

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v4, v3, v5, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    .line 14
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    .line 15
    :goto_1
    invoke-interface {p2}, Lnet/sf/saxon/regex/RegexIterator;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {p2}, Lnet/sf/saxon/regex/RegexIterator;->isMatching()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    iget-object v3, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    iget-object v4, v3, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->c:Lnet/sf/saxon/om/NodeName;

    iget-object v3, v3, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->h:Lnet/sf/saxon/type/SchemaType;

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v4, v3, v5, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    .line 18
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    .line 19
    invoke-interface {p2, v2}, Lnet/sf/saxon/regex/RegexIterator;->processMatchingSubstring(Lnet/sf/saxon/regex/RegexMatchHandler;)V

    .line 20
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_1

    .line 21
    :cond_1
    iget-object v4, p0, Lnet/sf/saxon/functions/AnalyzeStringFn;->i:Lnet/sf/saxon/functions/AnalyzeStringFn$c;

    iget-object v5, v4, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->b:Lnet/sf/saxon/om/NodeName;

    iget-object v4, v4, Lnet/sf/saxon/functions/AnalyzeStringFn$c;->g:Lnet/sf/saxon/type/SchemaType;

    sget-object v6, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v5, v4, v6, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    .line 22
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    .line 23
    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v3, v4, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    .line 24
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    .line 26
    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    .line 27
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/AnalyzeStringFn;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
