.class public final Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/AttributeList;
.implements Lorg/xml/sax/ext/Attributes2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p0

    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDeclared(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string v0, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object p0

    const-string p1, "ATTRIBUTE_DECLARED"

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAttributes(Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-void
.end method
