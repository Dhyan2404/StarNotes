.class public final Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private exception_index_table:[I

.field private number_of_exceptions:I


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
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;-><init>(II[ILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 5
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    if-ge p1, p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p4

    aput p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[ILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->setExceptionIndexTable([I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;-><init>(II[ILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitExceptionTable(Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getExceptionIndexTable()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    return-object p0
.end method

.method public final getExceptionNames()[Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    aget v3, v3, v1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getNumberOfExceptions()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    return p0
.end method

.method public final setExceptionIndexTable([I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->exception_index_table:[I

    aget v4, v4, v2

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->number_of_exceptions:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
