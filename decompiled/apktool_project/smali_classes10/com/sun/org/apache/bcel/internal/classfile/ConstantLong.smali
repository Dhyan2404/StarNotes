.class public final Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;
.super Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;


# instance fields
.field private bytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;-><init>(B)V

    .line 2
    iput-wide p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->getBytes()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;-><init>(J)V

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
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;-><init>(J)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitConstantLong(Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;)V

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

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public final getBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

    return-wide v0
.end method

.method public getConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/lang/Long;

    iget-wide v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public final setBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

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

    iget-wide v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
