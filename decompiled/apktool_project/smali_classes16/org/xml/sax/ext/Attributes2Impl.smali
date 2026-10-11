.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private declared:[Z

.field private specified:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result p1

    iget-object p2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length p2, p2

    if-ge p1, p2, :cond_0

    new-array p2, p1, [Z

    iget-object p3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    array-length p5, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    new-array p2, p1, [Z

    iget-object p3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length p5, p3

    invoke-static {p3, v0, p2, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    :cond_0
    iget-object p2, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aput-boolean p3, p2, p1

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string p2, "CDATA"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, p3

    aput-boolean p2, p0, p1

    return-void
.end method

.method public isDeclared(I)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No attribute at index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No such attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No such attribute: local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", namespace="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(I)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No attribute at index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No such attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No such attribute: local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", namespace="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAttribute(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-static {p0, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 5

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    instance-of v1, p1, Lorg/xml/sax/ext/Attributes2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/xml/sax/ext/Attributes2;

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v3

    aput-boolean v3, p1, v2

    iget-object p1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v3

    aput-boolean v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v2, v0, :cond_2

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string v3, "CDATA"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setDeclared(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aput-boolean p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No attribute at index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpecified(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean p2, p0, p1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No attribute at index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
