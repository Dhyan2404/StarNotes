.class public final Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;
.super Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.source "SourceFile"


# instance fields
.field private inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

.field private number_of_classes:I


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
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 5
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    .line 6
    new-array p1, p1, [Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    if-ge p1, p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    new-instance p4, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    invoke-direct {p4, p3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;-><init>(Ljava/io/DataInputStream;)V

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;-><init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->setInnerClasses([Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->getInnerClasses()[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitInnerClasses(Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->copy()Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

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

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInnerClasses()[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    return-object p0
.end method

.method public final setInnerClasses([Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->number_of_classes:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->inner_classes:[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->toString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
