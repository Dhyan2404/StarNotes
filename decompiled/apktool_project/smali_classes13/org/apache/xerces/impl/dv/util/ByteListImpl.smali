.class public Lorg/apache/xerces/impl/dv/util/ByteListImpl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/datatypes/ByteList;


# instance fields
.field protected canonical:Ljava/lang/String;

.field protected final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    return-void
.end method


# virtual methods
.method public contains(B)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return v0

    :cond_0
    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, p0

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/Byte;

    aget-byte p0, p0, p1

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length p0, p0

    return p0
.end method

.method public item(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xs/XSException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    aget-byte p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Lorg/apache/xerces/xs/XSException;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public toByteArray()[B
    .locals 3

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/util/ByteListImpl;->data:[B

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
