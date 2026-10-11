.class public final Lcom/sun/org/apache/bcel/internal/classfile/Code;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

.field private attributes_count:I

.field private code:[B

.field private code_length:I

.field private exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

.field private exception_table_length:I

.field private max_locals:I

.field private max_stack:I


# direct methods
.method public constructor <init>(IIII[B[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x2

    .line 15
    invoke-direct {p0, v0, p1, p2, p8}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 16
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_stack:I

    .line 17
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_locals:I

    .line 18
    invoke-virtual {p0, p5}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->setCode([B)V

    .line 19
    invoke-virtual {p0, p6}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->setExceptionTable([Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V

    .line 20
    invoke-virtual {p0, p7}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->setAttributes([Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    return-void
.end method

.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/bcel/internal/classfile/Code;-><init>(IIII[B[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    .line 7
    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    const/4 p1, 0x0

    move v0, p1

    .line 8
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    if-ge v0, v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    invoke-direct {v2, p3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;-><init>(Ljava/io/DataInputStream;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    .line 11
    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    .line 12
    :goto_1
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge p1, v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    invoke-static {p3, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readAttribute(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 14
    :cond_1
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Code;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxStack()I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/bcel/internal/classfile/Code;-><init>(IIII[B[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method private final calculateLength()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getInternalLength()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private final getInternalLength()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    mul-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitCode(Lcom/sun/org/apache/bcel/internal/classfile/Code;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->copy()Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    new-array v2, v2, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    :goto_1
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_stack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_locals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_1
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    return-object p0
.end method

.method public final getCode()[B
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    return-object p0
.end method

.method public final getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    return-object p0
.end method

.method public getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMaxLocals()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_locals:I

    return p0
.end method

.method public final getMaxStack()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_stack:I

    return p0
.end method

.method public final setAttributes([Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->calculateLength()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    return-void
.end method

.method public final setCode([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    return-void
.end method

.method public final setExceptionTable([Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    return-void
.end method

.method public final setMaxLocals(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_locals:I

    return-void
.end method

.method public final setMaxStack(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_stack:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code(max_stack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_stack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max_locals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->max_locals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", code_length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->code:[B

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->codeToString([BLcom/sun/org/apache/bcel/internal/classfile/ConstantPool;IIZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    const-string v2, "\n"

    if-lez v1, :cond_0

    const-string v1, "\nException handler(s) = \nFrom\tTo\tHandler\tType\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v5

    .line 4
    :goto_0
    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table_length:I

    if-ge v1, v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->exception_table:[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    aget-object v4, v4, v1

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v4, v6, p1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-lez p1, :cond_1

    const-string p1, "\nAttribute(s) = \n"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :goto_1
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes_count:I

    if-ge v5, p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Code;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
