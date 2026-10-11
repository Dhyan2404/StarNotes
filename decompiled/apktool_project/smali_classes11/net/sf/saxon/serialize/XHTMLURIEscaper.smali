.class public Lnet/sf/saxon/serialize/XHTMLURIEscaper;
.super Lnet/sf/saxon/serialize/HTMLURIEscaper;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->h:Ljava/util/HashSet;

    const-string v0, "form"

    const-string v1, "action"

    invoke-static {v0, v1}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "archive"

    const-string v1, "object"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "body"

    const-string v2, "background"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "q"

    const-string v2, "cite"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blockquote"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "del"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "classid"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "codebase"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "applet"

    invoke-static {v2, v0}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v1, v0}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v2, "datasrc"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v0, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "select"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "span"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "table"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "textarea"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "for"

    const-string v3, "script"

    invoke-static {v3, v2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "a"

    const-string v4, "href"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {v2, v5}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "area"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "link"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "base"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "img"

    const-string v4, "longdesc"

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "frame"

    invoke-static {v5, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "iframe"

    invoke-static {v6, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "head"

    const-string v7, "profile"

    invoke-static {v4, v7}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "src"

    invoke-static {v3, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "usemap"

    invoke-static {v2, v3}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/serialize/HTMLURIEscaper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method

.method private synthetic d(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 8

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->isUrlAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->h(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lnet/sf/saxon/om/AttributeInfo;

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

    :cond_1
    return-object p2
.end method

.method public static synthetic g(Lnet/sf/saxon/serialize/XHTMLURIEscaper;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->d(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeName;)Z
    .locals 3

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, ""

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->g:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/serialize/XHTMLURIEscaper;->g:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
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
    new-instance v0, Lcom/sunia/HTREnginev2/jlo;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/jlo;-><init>(Lnet/sf/saxon/serialize/XHTMLURIEscaper;Lnet/sf/saxon/om/NodeName;)V

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
