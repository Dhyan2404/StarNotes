.class public Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultText;
.source "SourceFile"


# instance fields
.field fCol:I

.field fData:Ljava/lang/String;

.field fRow:I

.field fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;II)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultText;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fRow:I

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fCol:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->rawname:Ljava/lang/String;

    const/4 p1, 0x3

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;->nodeType:S

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fCol:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->relations:[[Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fRow:I

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

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->relations:[[Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fRow:I

    aget-object p0, v0, p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fCol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fSchemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->relations:[[Lcom/sun/org/apache/xerces/internal/impl/xs/opti/NodeImpl;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fRow:I

    aget-object p0, v2, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_2

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/4 p1, 0x1

    const-string p2, "parameter error"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method
