.class public final Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/Constants;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;
.implements Ljava/io/Serializable;


# instance fields
.field private catch_type:I

.field private end_pc:I

.field private handler_pc:I

.field private start_pc:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    .line 5
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    .line 6
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    .line 7
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getStartPC()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getEndPC()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getHandlerPC()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getCatchType()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitCodeException(Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V

    return-void
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final getCatchType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    return p0
.end method

.method public final getEndPC()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    return p0
.end method

.method public final getHandlerPC()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    return p0
.end method

.method public final getStartPC()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    return p0
.end method

.method public final setCatchType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    return-void
.end method

.method public final setEndPC(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    return-void
.end method

.method public final setHandlerPC(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    return-void
.end method

.method public final setStartPC(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeException(start_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", handler_pc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", catch_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;Z)Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    if-nez v0, :cond_0

    const-string p1, "<Any exception>(0)"

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->catch_type:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->start_pc:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->end_pc:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->handler_pc:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
