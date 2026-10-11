.class public abstract Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>()V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;-><init>(SS)V

    return-void
.end method


# virtual methods
.method public getExceptions()[Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_ARRAY_EXCEPTION:[Ljava/lang/Class;

    return-object p0
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 2

    iget-short p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oops: unknown case in switch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
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
