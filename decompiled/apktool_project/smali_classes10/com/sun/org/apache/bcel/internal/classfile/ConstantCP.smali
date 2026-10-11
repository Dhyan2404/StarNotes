.class public abstract Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;
.super Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.source "SourceFile"


# instance fields
.field protected class_index:I

.field protected name_and_type_index:I


# direct methods
.method public constructor <init>(BII)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;-><init>(B)V

    .line 4
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    .line 5
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->name_and_type_index:I

    return-void
.end method

.method public constructor <init>(BLjava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;-><init>(BII)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;-><init>(BII)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->name_and_type_index:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public getClass(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClassIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    return p0
.end method

.method public final getNameAndTypeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->name_and_type_index:I

    return p0
.end method

.method public final setClassIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    return-void
.end method

.method public final setNameAndTypeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->name_and_type_index:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(class_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->class_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name_and_type_index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->name_and_type_index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
