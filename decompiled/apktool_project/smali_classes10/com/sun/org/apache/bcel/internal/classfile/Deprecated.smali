.class public final Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;-><init>(II[BLcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    if-lez p2, :cond_0

    .line 5
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 7
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Deprecated attribute with length > 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(II[BLcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;-><init>(II[BLcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitDeprecated(Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    :cond_0
    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public final getBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    return-object p0
.end method

.method public final setBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->bytes:[B

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    const/16 v0, 0x8

    aget-object p0, p0, v0

    return-object p0
.end method
