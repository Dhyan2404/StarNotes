.class public final Lorg/apache/xerces/util/AttributesProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/AttributeList;
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field public e:Lorg/apache/xerces/xni/XMLAttributes;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/apache/xerces/xni/XMLAttributes;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p0

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDeclared(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    const-string v0, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, v0}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/util/AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/AttributesProxy;->e:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method
