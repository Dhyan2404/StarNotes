.class public abstract Lcom/sun/org/apache/bcel/internal/classfile/Constant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sun/org/apache/bcel/internal/classfile/Node;
.implements Ljava/io/Serializable;


# instance fields
.field protected tag:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    return-void
.end method

.method public static final readConstant(Ljava/io/DataInputStream;)Lcom/sun/org/apache/bcel/internal/classfile/Constant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte tag in constant pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;-><init>(Ljava/io/DataInputStream;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method


# virtual methods
.method public abstract accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/sun/org/apache/bcel/internal/classfile/Constant;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract dump(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getTag()B
    .locals 0

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Constants;->CONSTANT_NAMES:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->tag:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
