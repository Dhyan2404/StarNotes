.class public Lorg/apache/xerces/impl/xs/opti/AttrImpl;
.super Lorg/apache/xerces/impl/xs/opti/NodeImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field public k:Lorg/w3c/dom/Element;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->i:S

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->k:Lorg/w3c/dom/Element;

    iput-object p6, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->k:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->k:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->l:Ljava/lang/String;

    return-object p0
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->l:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
