.class public Lnet/sf/saxon/serialize/HTML50Emitter;
.super Lnet/sf/saxon/serialize/HTMLEmitter;
.source "SourceFile"


# static fields
.field public static final q0:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "area"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "basefont"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "br"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "col"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "embed"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "hr"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "img"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "isindex"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "keygen"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "wbr"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE HTML>"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/serialize/HTML50Emitter;->q0:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->version:I

    return-void
.end method


# virtual methods
.method public isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public openDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x5

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->version:I

    invoke-super {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;->openDocument()V

    return-void
.end method

.method public rejectControlCharacters()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTML50Emitter;->openDocument()V

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "doctype-system"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v2, "doctype-public"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v0, v4

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v4

    :cond_1
    const-string v2, "html"

    invoke-virtual {p0, p1, v2, v0, v1}, Lnet/sf/saxon/serialize/HTML50Emitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    :cond_2
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/serialize/HTMLEmitter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "html"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p1, Lnet/sf/saxon/serialize/HTML50Emitter;->q0:[B

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/HTMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeDocTypeWithNullSystemId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
