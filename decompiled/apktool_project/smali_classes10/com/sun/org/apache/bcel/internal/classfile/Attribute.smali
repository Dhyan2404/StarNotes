.class public abstract Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;
.implements Ljava/io/Serializable;


# static fields
.field private static readers:Ljava/util/HashMap;


# instance fields
.field protected constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field protected length:I

.field protected name_index:I

.field protected tag:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(BIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->tag:B

    iput p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->name_index:I

    iput p3, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public static addAttributeReader(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/classfile/AttributeReader;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readers:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final readAttribute(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ooops! default case reached."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Signature;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_2
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/PMGClass;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/PMGClass;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_8
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_9
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_a
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_b
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_c
    sget-object v3, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/AttributeReader;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AttributeReader;->createAttribute(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/Unknown;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/Unknown;-><init>(IILjava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeAttributeReader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-object p0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    return p0
.end method

.method public final getNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->name_index:I

    return p0
.end method

.method public final getTag()B
    .locals 0

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->tag:B

    return p0
.end method

.method public final setConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public final setLength(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->length:I

    return-void
.end method

.method public final setNameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->name_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->tag:B

    aget-object p0, v0, p0

    return-object p0
.end method
