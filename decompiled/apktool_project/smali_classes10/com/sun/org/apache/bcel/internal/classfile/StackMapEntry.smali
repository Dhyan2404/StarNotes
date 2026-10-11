.class public final Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private byte_code_offset:I

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private number_of_locals:I

.field private number_of_stack_items:I

.field private types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

.field private types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;


# direct methods
.method public constructor <init>(II[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;I[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->byte_code_offset:I

    .line 11
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    .line 12
    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    .line 13
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    .line 14
    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    .line 15
    iput-object p6, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;I[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 2
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    invoke-direct {v3, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    .line 6
    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    .line 7
    :goto_1
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitStackMapEntry(Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;)V

    return-void
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getByteCodeOffset()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->byte_code_offset:I

    return p0
.end method

.method public final getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public getNumberOfLocals()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    return p0
.end method

.method public getNumberOfStackItems()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    return p0
.end method

.method public getTypesOfLocals()[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    return-object p0
.end method

.method public getTypesOfStackItems()[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    return-object p0
.end method

.method public setByteCodeOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->byte_code_offset:I

    return-void
.end method

.method public final setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public setNumberOfLocals(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    return-void
.end method

.method public setNumberOfStackItems(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    return-void
.end method

.method public setTypesOfLocals([Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    return-void
.end method

.method public setTypesOfStackItems([Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->byte_code_offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    const-string v2, ", "

    const-string v3, "}"

    const/4 v4, 0x0

    if-lez v1, :cond_2

    const-string v1, ", locals={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v4

    :goto_0
    iget v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_locals:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_locals:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    if-lez v1, :cond_5

    const-string v1, ", stack items={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    if-ge v4, v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->types_of_stack_items:[Lcom/sun/org/apache/bcel/internal/classfile/StackMapType;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->number_of_stack_items:I

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
