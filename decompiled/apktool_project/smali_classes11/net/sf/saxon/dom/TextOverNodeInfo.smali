.class public Lnet/sf/saxon/dom/TextOverNodeInfo;
.super Lnet/sf/saxon/dom/NodeOverNodeInfo;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Text;
.implements Lorg/w3c/dom/Comment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    return-void
.end method

.method public deleteData(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method is defined only on text nodes"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    return-void
.end method

.method public isElementContentWhitespace()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Method is defined only on text nodes"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->disallowUpdate()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/dom/NodeOverNodeInfo;->node:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lnet/sf/saxon/dom/DOMExceptionImpl;

    const/4 p1, 0x1

    const-string p2, "substringData: index out of bounds"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/dom/DOMExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p0
.end method
