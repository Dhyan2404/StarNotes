.class public final Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private index:I

.field private type:B


# direct methods
.method public constructor <init>(BILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->index:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->setType(B)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->setIndex(I)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;-><init>(BILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->setIndex(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method private printIndex()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", class="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->index:I

    invoke-virtual {v2, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->index:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;
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

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->hasIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_0
    return-void
.end method

.method public final getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->index:I

    return p0
.end method

.method public getType()B
    .locals 0

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    return p0
.end method

.method public final hasIndex()Z
    .locals 1

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->index:I

    return-void
.end method

.method public setType(B)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal type for StackMapType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Constants;->ITEM_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->type:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->printIndex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
