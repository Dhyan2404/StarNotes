.class public Lnet/sf/saxon/serialize/MetaTagAdjuster;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->e:Z

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->g:Z

    iput p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->k:Z

    const/4 p1, 0x4

    iput p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->l:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->k:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final d(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->k:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->l:I

    const/4 p2, 0x5

    const-string v1, "http://www.w3.org/1999/xhtml"

    if-ne p0, p2, :cond_3

    const-string p0, ""

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    invoke-interface {p1, v1}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->g:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    iget v1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->f:I

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->f:I

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    :goto_0
    return-void
.end method

.method public setIsXHTML(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->k:Z

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "encoding"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    iput-object v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->h:Ljava/lang/String;

    :cond_0
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "text/html"

    iput-object v0, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->i:Ljava/lang/String;

    :cond_1
    const-string v0, "html-version"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->k:Z

    if-nez v1, :cond_2

    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    iput p1, p0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->l:I

    :cond_3
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->f:I

    iget v2, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    const-string v9, "http-equiv"

    const/4 v10, 0x0

    const-string v11, "meta"

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v8, v11}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->d(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    iput-boolean v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->g:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    add-int/2addr v1, v3

    iput v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    iget-object v1, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-boolean v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "head"

    invoke-virtual {v0, v8, v1}, Lnet/sf/saxon/serialize/MetaTagAdjuster;->d(Lnet/sf/saxon/om/NodeName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v13, v1, v2, v11}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v1

    new-instance v8, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v3, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v3, v9}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    sget-object v16, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const-string v5, "Content-Type"

    sget-object v6, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v8}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/om/AttributeInfo;

    new-instance v15, Lnet/sf/saxon/om/NoNamespaceName;

    const-string v3, "content"

    invoke-direct {v15, v3}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/16 v19, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object v15

    iget-object v12, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v14

    const/16 v18, 0x0

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-interface/range {v12 .. v18}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->j:I

    iput v1, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->f:I

    iput-boolean v10, v0, Lnet/sf/saxon/serialize/MetaTagAdjuster;->e:Z

    iget-object v0, v0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V

    :cond_3
    return-void
.end method
