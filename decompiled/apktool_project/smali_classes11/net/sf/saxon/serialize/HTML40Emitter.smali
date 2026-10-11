.class public Lnet/sf/saxon/serialize/HTML40Emitter;
.super Lnet/sf/saxon/serialize/HTMLEmitter;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "area"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "base"

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

    const-string v0, "link"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {v0}, Lnet/sf/saxon/serialize/HTMLEmitter;->setEmptyTag(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;-><init>()V

    return-void
.end method


# virtual methods
.method public isHTMLElement(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public openDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "html-version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/Emitter;->outputProperties:Ljava/util/Properties;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4.01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HTML version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "SESU0013"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lnet/sf/saxon/serialize/HTMLEmitter;->version:I

    :cond_3
    invoke-super {p0}, Lnet/sf/saxon/serialize/HTMLEmitter;->openDocument()V

    return-void
.end method

.method public rejectControlCharacters()Z
    .locals 0

    const/4 p0, 0x1

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

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/HTML40Emitter;->openDocument()V

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
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string v2, "html"

    invoke-virtual {p0, v4, v2, v0, v1}, Lnet/sf/saxon/serialize/HTMLEmitter;->writeDocType(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLEmitter;->started:Z

    :cond_4
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/serialize/HTMLEmitter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
