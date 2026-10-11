.class public Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

.field private local_variable_table_length:I


# direct methods
.method public constructor <init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 5
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    .line 6
    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    if-ge p1, p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    invoke-direct {v0, p3, p4}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->setLocalVariableTable([Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitLocalVariableTable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->copy()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getLocalVariable(I)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    return-object p0
.end method

.method public final getTableLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    return p0
.end method

.method public final setLocalVariableTable([Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table:[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->local_variable_table_length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
