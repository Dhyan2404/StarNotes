.class public final Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

.field private line_number_table_length:I


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
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 5
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    .line 6
    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    if-ge p1, p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    new-instance p4, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    invoke-direct {p4, p3}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;-><init>(Ljava/io/DataInputStream;)V

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->setLineNumberTable([Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitLineNumberTable(Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->copy()Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    return-object p0
.end method

.method public getSourceLine(I)I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :cond_1
    add-int v5, v2, v0

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result v6

    if-ne v6, p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getLineNumber()I

    move-result p0

    return p0

    :cond_2
    if-ge p1, v6, :cond_3

    add-int/lit8 v0, v5, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v5, 0x1

    :goto_0
    if-ge v6, p1, :cond_4

    if-le v6, v3, :cond_4

    move v4, v5

    move v3, v6

    :cond_4
    if-le v2, v0, :cond_1

    if-gez v4, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public final getTableLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    return p0
.end method

.method public final setLineNumberTable([Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table:[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->line_number_table_length:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/16 v5, 0x48

    if-le v4, v5, :cond_1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
