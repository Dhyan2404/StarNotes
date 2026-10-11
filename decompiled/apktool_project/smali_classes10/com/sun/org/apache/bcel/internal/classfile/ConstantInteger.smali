.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;
.super Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;


# instance fields
.field private bytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;-><init>(B)V

    .line 2
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->getBytes()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantInteger(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;)V

    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final getBytes()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    return p0
.end method

.method public getConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public final setBytes(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->bytes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
