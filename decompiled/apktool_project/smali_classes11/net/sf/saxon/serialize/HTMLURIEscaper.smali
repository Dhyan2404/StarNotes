.class public Lnet/sf/saxon/serialize/HTMLURIEscaper;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# static fields
.field public static final e:Lnet/sf/saxon/serialize/HTMLTagHashSet;

.field public static final f:Lnet/sf/saxon/serialize/HTMLTagHashSet;


# instance fields
.field protected currentElement:Lnet/sf/saxon/om/NodeName;

.field protected escapeURIAttributes:Z

.field protected pool:Lnet/sf/saxon/om/NamePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->e:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v0, Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    const-string v0, "form"

    const-string v1, "action"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "archive"

    const-string v1, "object"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v2, "background"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v2, "cite"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "classid"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "codebase"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "applet"

    invoke-static {v2, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v2, "datasrc"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "select"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "span"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "table"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "textarea"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "for"

    const-string v3, "script"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "a"

    const-string v4, "href"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {v2, v5}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "area"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "link"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "base"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "img"

    const-string v4, "longdesc"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "frame"

    invoke-static {v5, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iframe"

    invoke-static {v6, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "head"

    const-string v7, "profile"

    invoke-static {v4, v7}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "src"

    invoke-static {v3, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "usemap"

    invoke-static {v2, v3}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->escapeURIAttributes:Z

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/serialize/HTMLURIEscaper;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->d(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 8

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->isUrlAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->escapeURL(Ljava/lang/String;ZLnet/sf/saxon/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v6

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result p0

    or-int/lit8 v7, p0, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1

    :cond_0
    return-object p2
.end method

.method public static e(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 8

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7e

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Lnet/sf/saxon/z/IntSingletonIterator;

    invoke-direct {v2, v1}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF8CharacterSet;->encode(Lnet/sf/saxon/z/IntIterator;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object v5

    div-int/lit8 v6, v4, 0x10

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object v5

    rem-int/lit8 v4, v4, 0x10

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static escapeURL(Ljava/lang/String;ZLnet/sf/saxon/Configuration;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7e

    if-le v0, v1, :cond_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->e(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->e(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->e:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->add(Ljava/lang/String;)V

    sget-object v0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->add(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isUrlAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->pool:Lnet/sf/saxon/om/NamePool;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->pool:Lnet/sf/saxon/om/NamePool;

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/serialize/HTMLURIEscaper;->e:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/serialize/HTMLURIEscaper;->f:Lnet/sf/saxon/serialize/HTMLTagHashSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/serialize/HTMLTagHashSet;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startDocument(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->pool:Lnet/sf/saxon/om/NamePool;

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->currentElement:Lnet/sf/saxon/om/NodeName;

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/HTMLURIEscaper;->escapeURIAttributes:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/yeh;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/yeh;-><init>(Lnet/sf/saxon/serialize/HTMLURIEscaper;Lnet/sf/saxon/om/NodeName;)V

    invoke-interface {p3, v0}, Lnet/sf/saxon/om/AttributeMap;->apply(Ljava/util/function/Function;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object p3
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    move-object v3, p3

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
