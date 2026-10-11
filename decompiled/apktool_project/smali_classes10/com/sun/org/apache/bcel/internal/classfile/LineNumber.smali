.class public final Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;
.implements Ljava/io/Serializable;


# instance fields
.field private line_number:I

.field private start_pc:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->start_pc:I

    .line 5
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->line_number:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getLineNumber()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;-><init>(II)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitLineNumber(Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V

    return-void
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;
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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->start_pc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->line_number:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public final getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->line_number:I

    return p0
.end method

.method public final getStartPC()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->start_pc:I

    return p0
.end method

.method public final setLineNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->line_number:I

    return-void
.end method

.method public final setStartPC(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->start_pc:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineNumber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->start_pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->line_number:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
