.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;
.super Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;


# instance fields
.field private bytes:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;-><init>(B)V

    .line 2
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->getBytes()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;-><init>(F)V

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
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;-><init>(F)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantFloat(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;)V

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

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public final getBytes()F
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

    return p0
.end method

.method public getConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/Float;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1
.end method

.method public final setBytes(F)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

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

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->bytes:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
