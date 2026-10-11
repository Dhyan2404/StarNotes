.class public Lnet/sf/saxon/event/WherePopulatedOutputter;
.super Lnet/sf/saxon/event/ProxyOutputter;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Z

.field public h:Lnet/sf/saxon/om/NodeName;

.field public i:Lnet/sf/saxon/type/SchemaType;

.field public j:Lnet/sf/saxon/s9api/Location;

.field public k:I

.field public l:Lnet/sf/saxon/om/AttributeMap;

.field public m:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyOutputter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    iput-boolean p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/WherePopulated;->isDeemedEmpty(Lnet/sf/saxon/om/Item;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 4
    iget-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    if-eqz v0, :cond_6

    .line 5
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_5

    .line 6
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/event/WherePopulatedOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 9
    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 10
    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    return-void

    .line 11
    :cond_4
    invoke-static {v0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/event/WherePopulatedOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;)V

    goto :goto_1

    .line 14
    :cond_6
    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyOutputter;->append(Lnet/sf/saxon/om/Item;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 15
    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    .line 16
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/WherePopulated;->isDeemedEmpty(Lnet/sf/saxon/om/Item;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 18
    iget-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    if-eqz v0, :cond_6

    .line 19
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_5

    .line 20
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 21
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/WherePopulatedOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 23
    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 24
    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    return-void

    .line 25
    :cond_4
    invoke-static {v0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lnet/sf/saxon/event/WherePopulatedOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 26
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    .line 27
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->l:Lnet/sf/saxon/om/AttributeMap;

    new-instance v7, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {v0, v7}, Lnet/sf/saxon/om/AttributeMap;->put(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->l:Lnet/sf/saxon/om/AttributeMap;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super/range {p0 .. p5}, Lnet/sf/saxon/event/ProxyOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyOutputter;->endDocument()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/event/ProxyOutputter;->endDocument()V

    :cond_1
    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyOutputter;->endElement()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/event/ProxyOutputter;->endElement()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    return-void
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p3, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->m:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p3, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->m:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public releaseStartTag()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->h:Lnet/sf/saxon/om/NodeName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->k:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->h:Lnet/sf/saxon/om/NodeName;

    iget-object v4, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->i:Lnet/sf/saxon/type/SchemaType;

    iget-object v5, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->l:Lnet/sf/saxon/om/AttributeMap;

    iget-object v6, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->m:Lnet/sf/saxon/om/NamespaceMap;

    iget-object v7, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->j:Lnet/sf/saxon/s9api/Location;

    iget v8, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->k:I

    invoke-virtual/range {v2 .. v8}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    :cond_1
    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->h:Lnet/sf/saxon/om/NodeName;

    iput p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->k:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyOutputter;->startDocument(I)V

    :goto_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    .line 12
    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->h:Lnet/sf/saxon/om/NodeName;

    .line 15
    iput-object p2, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->i:Lnet/sf/saxon/type/SchemaType;

    .line 16
    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->j:Lnet/sf/saxon/s9api/Location;

    .line 17
    iput p6, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->k:I

    .line 18
    iput-object p3, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->l:Lnet/sf/saxon/om/AttributeMap;

    .line 19
    iput-object p4, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->m:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    .line 20
    :cond_0
    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/event/WherePopulatedOutputter;->releaseStartTag()V

    .line 2
    iget v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->g:Z

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->h:Lnet/sf/saxon/om/NodeName;

    .line 5
    iput-object p2, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->i:Lnet/sf/saxon/type/SchemaType;

    .line 6
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->saveLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->j:Lnet/sf/saxon/s9api/Location;

    .line 7
    iput p4, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->k:I

    .line 8
    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->l:Lnet/sf/saxon/om/AttributeMap;

    .line 9
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/WherePopulatedOutputter;->m:Lnet/sf/saxon/om/NamespaceMap;

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ProxyOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method
