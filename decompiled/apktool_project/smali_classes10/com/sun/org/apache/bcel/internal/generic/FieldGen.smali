.class public Lcom/sun/org/apache/bcel/internal/generic/FieldGen;
.super Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;
.source "SourceFile"


# instance fields
.field private observers:Ljava/util/ArrayList;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setAccessFlags(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Field;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 10
    aget-object v0, p1, p2

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->setValue(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addConstant()I
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops: Unhandled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addLong(J)I

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addDouble(D)I

    move-result p0

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFloat(F)I

    move-result p0

    return p0

    :pswitch_3
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInteger(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addString(Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Types are not compatible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Only final fields may have an initial value!"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "You haven\'t defined the type of the field yet"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;

    invoke-interface {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantObject;->getConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sun/org/apache/bcel/internal/generic/FieldObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->observers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->observers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelInitValue()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    return-void
.end method

.method public copy(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/FieldGen;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-object p0
.end method

.method public getField()Lcom/sun/org/apache/bcel/internal/classfile/Field;
    .locals 9

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->getSignature()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v5

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->addConstant()I

    move-result v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    const-string v3, "ConstantValue"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v7

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object v0
.end method

.method public getInitValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeObserver(Lcom/sun/org/apache/bcel/internal/generic/FieldObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->observers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setInitValue(B)V
    .locals 1

    .line 11
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(C)V
    .locals 1

    .line 9
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(D)V
    .locals 2

    .line 17
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(F)V
    .locals 4

    .line 15
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(I)V
    .locals 1

    .line 5
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(J)V
    .locals 2

    .line 3
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "java.lang.String"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(S)V
    .locals 1

    .line 7
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInitValue(Z)V
    .locals 1

    .line 13
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->checkType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->getInitValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGen;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/FieldObserver;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldObserver;->notify(Lcom/sun/org/apache/bcel/internal/generic/FieldGen;)V

    goto :goto_0

    :cond_0
    return-void
.end method
