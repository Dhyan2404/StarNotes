.class public Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;
    }
.end annotation


# static fields
.field private static append_mos:[Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;


# instance fields
.field protected cg:Lcom/sun/org/apache/bcel/internal/generic/ClassGen;

.field protected cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v2, "java.lang.StringBuffer"

    const-string v3, "append"

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRINGBUFFER:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/4 v15, 0x1

    new-array v5, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/16 v16, 0x0

    aput-object v1, v5, v16

    const/4 v6, 0x1

    move-object v1, v7

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    aput-object v7, v0, v16

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    aput-object v2, v12, v16

    const/4 v13, 0x1

    move-object v8, v1

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    aput-object v1, v0, v15

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const-string v9, "java.lang.StringBuffer"

    const-string v10, "append"

    new-array v12, v15, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aput-object v2, v12, v16

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->append_mos:[Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cg:Lcom/sun/org/apache/bcel/internal/generic/ClassGen;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-void
.end method

.method public static createArrayLoad(Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->CALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->BALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createArrayStore(Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->CASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->BASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static final createBinaryDoubleOp(C)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
    .locals 3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method private static final createBinaryFloatOp(C)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
    .locals 3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method private static final createBinaryIntOp(CLjava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
    .locals 2

    const/16 v0, 0x25

    if-eq p0, v0, :cond_a

    const/16 v0, 0x26

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_8

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_7

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid operand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IXOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_2
    const-string p0, ">>>"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IUSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    :goto_0
    return-object p0

    :cond_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISHL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_8
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_9
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IAND:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_a
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method private static final createBinaryLongOp(CLjava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
    .locals 2

    const/16 v0, 0x25

    if-eq p0, v0, :cond_a

    const/16 v0, 0x26

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_8

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_7

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid operand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LXOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_2
    const-string p0, ">>>"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LUSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    :goto_0
    return-object p0

    :cond_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSHL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_6
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_7
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_8
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_9
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LAND:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0

    :cond_a
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    return-object p0
.end method

.method public static createBinaryOperation(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createBinaryLongOp(CLjava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createBinaryDoubleOp(C)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createBinaryFloatOp(C)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createBinaryIntOp(CLjava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static createBranchInstruction(SLcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/JSR_W;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/JSR_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/GOTO_W;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFNONNULL;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFNULL;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFNULL;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/JSR;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/JSR;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/GOTO;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/GOTO;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPNE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPEQ;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ACMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPGE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFLE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFLE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFGT;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFGT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFGE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFGE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFLT;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFLT;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFNE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/IFEQ;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createDup(I)Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    :goto_0
    return-object p0
.end method

.method public static createDup_1(I)Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2_X1:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X1:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    :goto_0
    return-object p0
.end method

.method public static createDup_2(I)Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2_X2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    :goto_0
    return-object p0
.end method

.method private createInvoke(Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;
    .locals 6

    .line 11
    iget-object v1, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->class_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->result_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iget-object v4, p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createInvoke(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;

    move-result-object p0

    return-object p0
.end method

.method public static createLoad(Lcom/sun/org/apache/bcel/internal/generic/Type;I)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/LLOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LLOAD;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/DLOAD;-><init>(I)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/FLOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FLOAD;-><init>(I)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createNull(Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ACONST_NULL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createPop(I)Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    :goto_0
    return-object p0
.end method

.method public static createReturn(Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createStore(Lcom/sun/org/apache/bcel/internal/generic/Type;I)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/LSTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/LSTORE;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/DSTORE;-><init>(I)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/FSTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FSTORE;-><init>(I)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static createThis()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    return-object v0
.end method

.method private static final isString(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z
    .locals 1

    instance-of v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.String"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createAppend(Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->isString(Lcom/sun/org/apache/bcel/internal/generic/Type;)Z

    move-result v1

    const/16 v2, 0xb6

    if-eqz v1, :cond_0

    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->append_mos:[Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createInvoke(Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;

    move-result-object p0

    return-object p0

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oops: No append for this type? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->append_mos:[Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createInvoke(Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p1, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->append_mos:[Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;

    aget-object p1, p1, v0

    invoke-direct {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createInvoke(Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public createCast(Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 8

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result p1

    const/16 p2, 0xb

    const/4 v0, 0x5

    if-ne p0, p2, :cond_1

    if-eq p1, v0, :cond_0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    :cond_0
    const/16 p1, 0xa

    :cond_1
    const-string v1, "C"

    const-string v2, "F"

    const-string v3, "D"

    const-string v4, "B"

    const-string v5, "S"

    const-string v6, "I"

    const-string v7, "L"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sun.org.apache.bcel.internal.generic."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    aget-object p1, p2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v0

    aget-object p0, p2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find instruction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    if-eqz v0, :cond_4

    instance-of p1, p2, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p2, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not cast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCheckCast(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/CHECKCAST;-><init>(I)V

    return-object v0
.end method

.method public createConstant(Ljava/lang/Object;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 2

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Ljava/lang/Character;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/Character;)V

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFieldAccess(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;S)Lcom/sun/org/apache/bcel/internal/generic/FieldInstruction;
    .locals 0

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    packed-switch p4, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Oops: Unknown getfield kind:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createGetField(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETFIELD;-><init>(I)V

    return-object v0
.end method

.method public createGetStatic(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    return-object v0
.end method

.method public createInstanceOf(Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;)Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;
    .locals 1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/INSTANCEOF;-><init>(I)V

    return-object v0
.end method

.method public createInvoke(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;S)Lcom/sun/org/apache/bcel/internal/generic/InvokeInstruction;
    .locals 3

    .line 1
    invoke-static {p3, p4}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getMethodSignature(Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v2, p4, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p4, 0xb9

    if-ne p5, p4, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_1
    packed-switch p5, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Oops: Unknown invoke kind:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    return-object p1

    .line 8
    :pswitch_1
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESTATIC;-><init>(I)V

    return-object p1

    .line 9
    :pswitch_2
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    return-object p1

    .line 10
    :pswitch_3
    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createNew(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Lcom/sun/org/apache/bcel/internal/generic/NEW;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/NEW;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/NEW;-><init>(I)V

    return-object v0
.end method

.method public createNew(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/NEW;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->createNew(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Lcom/sun/org/apache/bcel/internal/generic/NEW;

    move-result-object p0

    return-object p0
.end method

.method public createNewArray(Lcom/sun/org/apache/bcel/internal/generic/Type;S)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    instance-of p2, p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    return-object p2

    :cond_0
    instance-of p2, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/ANEWARRAY;-><init>(I)V

    return-object p2

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/NEWARRAY;-><init>(B)V

    return-object p0

    :cond_2
    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    move-object p1, v0

    :goto_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addArrayClass(Lcom/sun/org/apache/bcel/internal/generic/ArrayType;)I

    move-result p0

    invoke-direct {v0, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/MULTIANEWARRAY;-><init>(IS)V

    return-object v0
.end method

.method public createPrintln(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 6

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    const-string v2, "out"

    const-string v3, "Ljava/io/PrintStream;"

    const-string v4, "java.lang.System"

    invoke-virtual {v1, v4, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    const-string v3, "println"

    const-string v4, "(Ljava/lang/String;)V"

    const-string v5, "java.io.PrintStream"

    invoke-virtual {v2, v5, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;

    invoke-direct {v3, v1}, Lcom/sun/org/apache/bcel/internal/generic/GETSTATIC;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object v0
.end method

.method public createPutField(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    return-object v0
.end method

.method public createPutStatic(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;)Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/PUTSTATIC;-><init>(I)V

    return-object v0
.end method

.method public getClassGen()Lcom/sun/org/apache/bcel/internal/generic/ClassGen;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cg:Lcom/sun/org/apache/bcel/internal/generic/ClassGen;

    return-object p0
.end method

.method public getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-object p0
.end method

.method public setClassGen(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cg:Lcom/sun/org/apache/bcel/internal/generic/ClassGen;

    return-void
.end method

.method public setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method
