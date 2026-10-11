.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;
.super Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;


# instance fields
.field private bytes:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;-><init>(B)V

    .line 2
    iput-wide p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->getBytes()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;-><init>(D)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;-><init>(D)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantDouble(Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;)V

    return-void
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public final getBytes()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    return-wide v0
.end method

.method public getConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/lang/Double;

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1
.end method

.method public final setBytes(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(bytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->bytes:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
