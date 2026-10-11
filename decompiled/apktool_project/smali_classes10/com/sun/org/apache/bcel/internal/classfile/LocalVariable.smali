.class public final Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;
.implements Ljava/io/Serializable;


# instance fields
.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private index:I

.field private length:I

.field private name_index:I

.field private signature_index:I

.field private start_pc:I


# direct methods
.method public constructor <init>(IIIIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->start_pc:I

    .line 5
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->length:I

    .line 6
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->name_index:I

    .line 7
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->signature_index:I

    .line 8
    iput p5, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->index:I

    .line 9
    iput-object p6, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getNameIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignatureIndex()I

    move-result v4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;-><init>(IIIIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;-><init>(IIIIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitLocalVariable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V

    return-void
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->start_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->index:I

    return p0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->length:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->name_index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->name_index:I

    return p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->signature_index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSignatureIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->signature_index:I

    return p0
.end method

.method public final getStartPC()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->start_pc:I

    return p0
.end method

.method public final setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->index:I

    return-void
.end method

.method public final setLength(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->length:I

    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->name_index:I

    return-void
.end method

.method public final setSignatureIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->signature_index:I

    return-void
.end method

.method public final setStartPC(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->start_pc:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalVariable(start_pc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->start_pc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->index:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
