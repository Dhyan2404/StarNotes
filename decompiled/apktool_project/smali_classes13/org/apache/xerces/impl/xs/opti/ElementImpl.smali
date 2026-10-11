.class public Lorg/apache/xerces/impl/xs/opti/ElementImpl;
.super Lorg/apache/xerces/impl/xs/opti/DefaultElement;
.source "SourceFile"


# instance fields
.field public k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

.field public l:[Lorg/w3c/dom/Attr;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/opti/DefaultElement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->m:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->n:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->i:S

    iput p1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->p:I

    iput p2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->q:I

    iput p3, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->r:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 3
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    .line 4
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/opti/DefaultElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->m:I

    iput p1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->n:I

    iput p1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    iput p5, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->p:I

    iput p6, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->q:I

    iput p7, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->r:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->s:Ljava/lang/String;

    return-object p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xs/opti/NamedNodeMapImpl;-><init>([Lorg/w3c/dom/Attr;)V

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->r:I

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->q:I

    return p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->l:[[Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object p0, p0, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->l:[[Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    iget v3, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    aget-object v2, v2, v3

    array-length v3, v2

    if-lt v1, v3, :cond_2

    if-ne v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    sub-int/2addr v1, v0

    aget-object p0, v2, v1

    return-object p0

    :cond_2
    aget-object v3, v2, v1

    if-nez v3, :cond_3

    sub-int/2addr v1, v0

    aget-object p0, v2, v1

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->p:I

    return p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->n:I

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->l:[[Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->m:I

    aget-object p0, v1, p0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->l:[[Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->m:I

    aget-object p0, v0, p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->k:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v2, v2, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->l:[[Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->m:I

    aget-object p0, v2, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getSyntheticAnnotation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public hasChildNodes()Z
    .locals 1

    iget p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->o:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->l:[Lorg/w3c/dom/Attr;

    aget-object p0, p0, v0

    invoke-interface {p0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
