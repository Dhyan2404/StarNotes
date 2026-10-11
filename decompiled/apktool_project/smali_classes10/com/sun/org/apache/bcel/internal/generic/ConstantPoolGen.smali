.class public Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;
    }
.end annotation


# static fields
.field private static final FIELDREF_DELIM:Ljava/lang/String; = "&"

.field private static final IMETHODREF_DELIM:Ljava/lang/String; = "#"

.field private static final METHODREF_DELIM:Ljava/lang/String; = ":"

.field private static final NAT_DELIM:Ljava/lang/String; = "%"


# instance fields
.field private class_table:Ljava/util/HashMap;

.field protected constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

.field private cp_table:Ljava/util/HashMap;

.field protected index:I

.field private n_a_t_table:Ljava/util/HashMap;

.field protected size:I

.field private string_table:Ljava/util/HashMap;

.field private utf8_table:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 49
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    .line 50
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->string_table:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->class_table:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->utf8_table:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 47
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantPool()[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>([Lcom/sun/org/apache/bcel/internal/classfile/Constant;)V

    return-void
.end method

.method public constructor <init>([Lcom/sun/org/apache/bcel/internal/classfile/Constant;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->string_table:Ljava/util/HashMap;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->class_table:Ljava/util/HashMap;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->utf8_table:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/HashMap;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    .line 10
    array-length v1, p1

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    if-le v1, v2, :cond_0

    .line 11
    array-length v1, p1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    .line 12
    new-array v1, v1, [Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length v1, p1

    if-lez v1, :cond_1

    .line 15
    array-length p1, p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    .line 16
    :cond_1
    :goto_0
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v0, p1, :cond_9

    .line 17
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v1, p1, v0

    .line 18
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    if-eqz v2, :cond_2

    .line 19
    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    .line 20
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 21
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->string_table:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 22
    :cond_2
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    if-eqz v2, :cond_3

    .line 23
    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    .line 24
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 25
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->class_table:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 26
    :cond_3
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    if-eqz v2, :cond_4

    .line 27
    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    .line 28
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    aget-object p1, p1, v2

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 29
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v1

    aget-object v1, v2, v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 30
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 31
    :cond_4
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    if-eqz v2, :cond_5

    .line 32
    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 33
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->utf8_table:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 34
    :cond_5
    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;

    if-eqz v2, :cond_8

    .line 35
    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;

    .line 36
    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v3

    aget-object p1, p1, v3

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    .line 37
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    aget-object v2, v3, v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    .line 38
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result p1

    aget-object p1, v3, p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 39
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v4

    aget-object v3, v3, v4

    check-cast v3, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 41
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v2

    aget-object v2, v4, v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    .line 43
    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 44
    instance-of v4, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    if-eqz v4, :cond_6

    const-string v1, "#"

    goto :goto_1

    .line 45
    :cond_6
    instance-of v1, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    if-eqz v1, :cond_7

    const-string v1, "&"

    goto :goto_1

    :cond_7
    const-string v1, ":"

    .line 46
    :goto_1
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private addClass_(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupClass(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;-><init>(I)V

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    aput-object v0, v2, v1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->class_table:Ljava/util/HashMap;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method


# virtual methods
.method public addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I
    .locals 0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass_(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addClass(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass_(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addConstant(Lcom/sun/org/apache/bcel/internal/classfile/Constant;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I
    .locals 5

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantPool()[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const-string v1, "Unknown constant type "

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    aget-object v0, p2, v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result p1

    aget-object p1, p2, p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    aget-object v2, p2, v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    aget-object v0, p2, v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    aget-object v2, p2, v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v3

    aget-object v3, p2, v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    aget-object p2, p2, v0

    check-cast p2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-virtual {p0, v2, v3, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, v2, v3, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p0, v2, v3, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result p1

    aget-object p1, p2, p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result p1

    aget-object p1, p2, p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->getBytes()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addDouble(D)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->getBytes()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addLong(J)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->getBytes()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFloat(F)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->getBytes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInteger(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public addDouble(D)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupDouble(D)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;-><init>(D)V

    aput-object v2, v1, v0

    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    return v0
.end method

.method public addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    invoke-direct {v4, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;-><init>(II)V

    aput-object v4, v3, v2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public addFloat(F)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupFloat(F)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;-><init>(F)V

    aput-object p0, v1, v0

    return v0
.end method

.method public addInteger(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;-><init>(I)V

    aput-object p0, v1, v0

    return v0
.end method

.method public addInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)I
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    .line 6
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    invoke-direct {v4, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;-><init>(II)V

    aput-object v4, v3, v2

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public addLong(J)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupLong(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    new-instance v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;-><init>(J)V

    aput-object v2, v1, v0

    iget p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    return v0
.end method

.method public addMethodref(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)I
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    .line 6
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    invoke-direct {v4, v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;-><init>(II)V

    aput-object v4, v3, v2

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public addNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    invoke-direct {v4, v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;-><init>(II)V

    aput-object v4, v3, v2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public addString(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupString(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;-><init>(I)V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    aput-object v1, v2, v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->string_table:Ljava/util/HashMap;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public addUtf8(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupUtf8(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->adjustSize()V

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-instance v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-direct {v2, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->utf8_table:Ljava/util/HashMap;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public adjustSize()V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->size:I

    new-array v2, v2, [Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    iput-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    const/4 p0, 0x0

    invoke-static {v1, p0, v2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;-><init>([Lcom/sun/org/apache/bcel/internal/classfile/Constant;)V

    return-object v0
.end method

.method public getFinalConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;-><init>([Lcom/sun/org/apache/bcel/internal/classfile/Constant;)V

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    return p0
.end method

.method public lookupClass(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->class_table:Ljava/util/HashMap;

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupDouble(D)I
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public lookupFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupFloat(F)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->getBytes()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public lookupInteger(I)I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->getBytes()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public lookupInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)I
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public lookupInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupLong(J)I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public lookupMethodref(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)I
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public lookupMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->cp_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->n_a_t_table:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupString(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->string_table:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public lookupUtf8(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->utf8_table:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen$Index;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public setConstant(ILcom/sun/org/apache/bcel/internal/classfile/Constant;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aput-object p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->index:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
