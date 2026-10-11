.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private constantvalue_index:I


# direct methods
.method public constructor <init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 4
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->constantvalue_index:I

    return-void
.end method

.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->constantvalue_index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final getConstantValueIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->constantvalue_index:I

    return p0
.end method

.method public final setConstantValueIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->constantvalue_index:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->constantvalue_index:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v1

    const/4 v2, 0x3

    const-string v3, ""

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type of ConstValue invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->getBytes()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->getBytes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->getBytes()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->getBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
