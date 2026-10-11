.class public final Lcom/sun/org/apache/bcel/internal/classfile/StackMap;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;


# instance fields
.field private map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

.field private map_length:I


# direct methods
.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 4
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    .line 5
    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    const/4 p1, 0x0

    .line 6
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    if-ge p1, p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    invoke-direct {v0, p3, p4}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->setStackMap([Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitStackMap(Lcom/sun/org/apache/bcel/internal/classfile/StackMap;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->copy()Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMapLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    return p0
.end method

.method public final getStackMap()[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    return-object p0
.end method

.method public final setStackMap([Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "StackMap("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->map_length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
