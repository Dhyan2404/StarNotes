.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SwitchForm;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/LookupSwitchForm;->d(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v1

    new-array v2, v0, [I

    new-instance v3, Lcom/sunia/HTREnginev2/y5j;

    invoke-direct {v3, p2}, Lcom/sunia/HTREnginev2/y5j;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    new-array v3, v0, [I

    new-instance v4, Lcom/sunia/HTREnginev2/z5j;

    invoke-direct {v4, p2}, Lcom/sunia/HTREnginev2/z5j;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    add-int/lit8 p2, v0, 0x1

    new-array v4, p2, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-static {v3, v5, v4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    rem-int/lit8 p3, p3, 0x4

    rsub-int/lit8 p2, p3, 0x3

    add-int/lit8 p3, p2, 0x1

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0x4

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr p3, v3

    add-int/2addr p3, v3

    new-array p3, p3, [I

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v3

    aput v3, p3, v5

    move v3, v5

    :goto_0
    if-ge v3, p2, :cond_0

    add-int/lit8 v4, v1, 0x1

    aput v5, p3, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v1, 0x1

    const/4 v3, -0x1

    aput v3, p3, v1

    add-int/lit8 v1, p2, 0x1

    aput v3, p3, p2

    add-int/lit8 p2, v1, 0x1

    aput v3, p3, v1

    add-int/lit8 v1, p2, 0x1

    aput v3, p3, p2

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0x4

    :goto_1
    if-ge v5, v0, :cond_1

    aget p2, v2, v5

    invoke-virtual {p0, p2, v1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 p2, v1, 0x1

    aput v3, p3, v1

    add-int/lit8 v1, p2, 0x1

    aput v3, p3, p2

    add-int/lit8 p2, v1, 0x1

    aput v3, p3, v1

    add-int/lit8 v1, p2, 0x1

    aput v3, p3, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method
