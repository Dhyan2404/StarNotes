.class public Lnet/sf/saxon/serialize/CDATAFilter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/str/UnicodeBuilder;

.field public final f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/serialize/charcode/CharacterSet;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->f:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->f:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/CDATAFilter;->isCDATA(Lnet/sf/saxon/om/NodeName;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/serialize/UnicodeNormalizer;

    iget-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/serialize/UnicodeNormalizer;->normalize(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object v0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :goto_1
    move v4, v2

    :goto_2
    if-ge v2, v0, :cond_6

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v8, p0, Lnet/sf/saxon/serialize/CDATAFilter;->h:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v8, v7}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    int-to-long v7, v4

    invoke-virtual {v1, v7, v8, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/serialize/CDATAFilter;->d(Lnet/sf/saxon/str/UnicodeString;)V

    :cond_4
    iget-object v4, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    int-to-long v5, v2

    add-int/2addr v2, v3

    int-to-long v7, v2

    invoke-virtual {v1, v5, v6, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v9, 0x2

    invoke-interface {v4, v5, v6, v9}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    if-lt v2, v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    iget-object v5, p0, Lnet/sf/saxon/serialize/CDATAFilter;->h:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    invoke-interface {v5, v4}, Lnet/sf/saxon/serialize/charcode/CharacterSet;->inCharset(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    goto :goto_1

    :cond_6
    int-to-long v2, v4

    int-to-long v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/CDATAFilter;->d(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    iget-object v1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {v0, v1, v3, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_4
    iget-object p0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->clear()V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CDATAFilter;->c()V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CDATAFilter;->c()V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iget-object v5, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    const-string v6, "<![CDATA["

    invoke-static {v6}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v5, v6, v4, v7}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    const-wide/16 v5, 0x0

    move-wide v8, v5

    :goto_0
    const-wide/16 v10, 0x2

    sub-long v12, v2, v10

    cmp-long v12, v5, v12

    if-gez v12, :cond_4

    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v12

    const/16 v13, 0x5d

    const-wide/16 v14, 0x1

    if-ne v12, v13, :cond_2

    move-wide/from16 v16, v8

    add-long v7, v5, v14

    invoke-virtual {v1, v7, v8}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    if-ne v7, v13, :cond_1

    add-long/2addr v10, v5

    invoke-virtual {v1, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_1

    iget-object v7, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-wide/from16 v8, v16

    invoke-virtual {v1, v8, v9, v10, v11}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    const/4 v12, 0x3

    invoke-interface {v7, v8, v4, v12}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v7, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    const-string v8, "]]><![CDATA["

    invoke-static {v8}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-interface {v7, v8, v4, v12}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    move-wide v8, v10

    goto :goto_2

    :cond_1
    move-wide/from16 v8, v16

    const/4 v12, 0x3

    goto :goto_1

    :cond_2
    move v12, v7

    :goto_1
    invoke-virtual {v1, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v1, v8, v9, v5, v6}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-interface {v7, v8, v4, v12}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    add-long v7, v5, v14

    move-wide v8, v7

    :cond_3
    :goto_2
    add-long/2addr v5, v14

    move v7, v12

    goto :goto_0

    :cond_4
    move v12, v7

    iget-object v5, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v1, v8, v9, v2, v3}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v5, v1, v4, v12}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v0, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    const-string v1, "]]>"

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v0, v1, v4, v12}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final e(Ljava/util/Properties;)V
    .locals 8

    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "version"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "cdata-section-elements"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->g:Ljava/util/Set;

    return-void

    :cond_2
    new-instance v4, Ljava/util/HashSet;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lnet/sf/saxon/serialize/CDATAFilter;->g:Ljava/util/Set;

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " \t\n\r"

    invoke-direct {v4, p1, v5, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/serialize/CDATAFilter;->g:Ljava/util/Set;

    new-instance v6, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v5, v7, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CDATAFilter;->c()V

    iget-object v0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public isCDATA(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->g:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CDATAFilter;->c()V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/CDATAFilter;->e(Ljava/util/Properties;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getCharacterSetFactory()Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/serialize/charcode/CharacterSetFactory;->getCharacterSet(Ljava/util/Properties;)Lnet/sf/saxon/serialize/charcode/CharacterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/CDATAFilter;->h:Lnet/sf/saxon/serialize/charcode/CharacterSet;

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CDATAFilter;->c()V

    iget-object v0, p0, Lnet/sf/saxon/serialize/CDATAFilter;->f:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
