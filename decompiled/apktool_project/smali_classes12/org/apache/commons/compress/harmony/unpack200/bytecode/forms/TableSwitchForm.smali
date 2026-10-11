.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;
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

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->b(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 7

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextLabel()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextCaseValues()I

    move-result v2

    new-array v3, v0, [I

    new-instance v4, Lcom/sunia/HTREnginev2/w8n;

    invoke-direct {v4, p2}, Lcom/sunia/HTREnginev2/w8n;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    add-int/lit8 p2, v0, 0x1

    new-array v4, p2, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-static {v3, v5, v4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setByteCodeTargets([I)V

    add-int p2, v2, v0

    sub-int/2addr p2, v1

    rem-int/lit8 p3, p3, 0x4

    rsub-int/lit8 p3, p3, 0x3

    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    new-array v3, v3, [I

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getOpcode()I

    move-result v4

    aput v4, v3, v5

    move v4, v5

    :goto_0
    if-ge v4, p3, :cond_0

    add-int/lit8 v6, v1, 0x1

    aput v5, v3, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    :cond_0
    add-int/lit8 p3, v1, 0x1

    const/4 v4, -0x1

    aput v4, v3, v1

    add-int/lit8 v1, p3, 0x1

    aput v4, v3, p3

    add-int/lit8 p3, v1, 0x1

    aput v4, v3, v1

    add-int/lit8 v1, p3, 0x1

    aput v4, v3, p3

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, p2, v1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/VariableInstructionForm;->setRewrite4Bytes(II[I)V

    add-int/lit8 v1, v1, 0x4

    :goto_1
    if-ge v5, v0, :cond_1

    add-int/lit8 p0, v1, 0x1

    aput v4, v3, v1

    add-int/lit8 p2, p0, 0x1

    aput v4, v3, p0

    add-int/lit8 p0, p2, 0x1

    aput v4, v3, p2

    add-int/lit8 v1, p0, 0x1

    aput v4, v3, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setRewrite([I)V

    return-void
.end method
