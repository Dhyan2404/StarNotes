.class public abstract Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;
.super Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;


# instance fields
.field protected attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

.field protected attributes_count:I

.field protected constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field protected name_index:I

.field protected signature_index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    return-void
.end method

.method public constructor <init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    .line 9
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    .line 10
    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    .line 11
    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    .line 12
    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    .line 13
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->setAttributes([Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getNameIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    .line 5
    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    invoke-static {p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readAttribute(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public copy_(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, v0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    return-object p0
.end method

.method public final getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    return p0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSignatureIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    return p0
.end method

.method public final setAttributes([Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    return-void
.end method

.method public final setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    return-void
.end method

.method public final setSignatureIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    return-void
.end method
