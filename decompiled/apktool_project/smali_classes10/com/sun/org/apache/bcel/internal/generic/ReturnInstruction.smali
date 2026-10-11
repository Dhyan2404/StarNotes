.class public abstract Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;
.super Lcom/sun/org/apache/bcel/internal/generic/Instruction;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/ExceptionThrower;
.implements Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;
.implements Lcom/sun/org/apache/bcel/internal/generic/StackConsumer;


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
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ILLEGAL_MONITOR_STATE:Ljava/lang/Class;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 3

    .line 1
    iget-short v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->opcode:S

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method
