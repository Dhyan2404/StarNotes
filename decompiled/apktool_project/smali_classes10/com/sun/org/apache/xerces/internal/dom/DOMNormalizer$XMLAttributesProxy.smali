.class public final Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XMLAttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

.field protected final fAugmentations:Ljava/util/Vector;

.field protected fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

.field protected fElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Vector;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setXercesAttributeNode(Lorg/w3c/dom/Attr;)I

    move-result p2

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance p3, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    invoke-virtual {p0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    :cond_0
    return p2
.end method

.method public getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->this$0:Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_0
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getQualifiedName(I)Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "CDATA"

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isSpecified(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result p0

    return p0
.end method

.method public removeAllAttributes()V
    .locals 0

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 0

    return-void
.end method

.method public setAttributes(Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V
    .locals 1

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fElement:Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result p1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->setSize(I)V

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    invoke-virtual {p3, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void
.end method

.method public setAugmentations(ILcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAugmentations:Ljava/util/Vector;

    invoke-virtual {p0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public setName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 0

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getSpecified()Z

    move-result p1

    .line 4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    :cond_0
    return-void
.end method

.method public setValue(ILjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V
    .locals 0

    .line 6
    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMNormalizer$XMLAttributesProxy;->setValue(ILjava/lang/String;)V

    return-void
.end method
