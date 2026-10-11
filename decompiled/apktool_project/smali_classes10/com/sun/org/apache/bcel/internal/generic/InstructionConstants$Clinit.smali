.class public Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants$Clinit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clinit"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INSTRUCTIONS:[Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const/4 v0, 0x0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->NOP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ACONST_NULL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_M1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_2:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_3:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_4:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ICONST_5:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xb

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xc

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xd

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCONST_2:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xe

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_0:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xf

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCONST_1:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x2e

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x2f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x30

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x31

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x32

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x33

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->BALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x34

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->CALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x35

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SALOAD:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x4f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x50

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x51

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x52

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x53

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->AASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x54

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->BASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x55

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->CASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x56

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SASTORE:Lcom/sun/org/apache/bcel/internal/generic/ArrayInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x57

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x58

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x59

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5a

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X1:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5b

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP_X2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5c

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5d

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2_X1:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5e

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP2_X2:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x5f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->SWAP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x60

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x61

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x62

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x63

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DADD:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x64

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x65

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x66

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x67

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DSUB:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x68

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x69

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6a

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6b

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DMUL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6c

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6d

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6e

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x6f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DDIV:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x70

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x71

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x72

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x73

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DREM:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x74

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->INEG:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x75

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LNEG:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x76

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FNEG:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x77

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DNEG:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x78

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISHL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x79

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSHL:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7a

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ISHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7b

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7c

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IUSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7d

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LUSHR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7e

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IAND:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x7f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LAND:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x80

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x81

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x82

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IXOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x83

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LXOR:Lcom/sun/org/apache/bcel/internal/generic/ArithmeticInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x85

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2L:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x86

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2F:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x87

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x88

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->L2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x89

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->L2F:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8a

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->L2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8b

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->F2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8c

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->F2L:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8d

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->F2D:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8e

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2I:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x8f

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2L:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x90

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->D2F:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x91

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2B:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x92

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2C:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x93

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->I2S:Lcom/sun/org/apache/bcel/internal/generic/ConversionInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0x94

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LCMP:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x95

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCMPL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x96

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FCMPG:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x97

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCMPL:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0x98

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DCMPG:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xac

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->IRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xad

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->LRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xae

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->FRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xaf

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DRETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xb0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xb1

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    aput-object v1, p0, v0

    const/16 v0, 0xbe

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ARRAYLENGTH:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xbf

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->ATHROW:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xc2

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->MONITORENTER:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    const/16 v0, 0xc3

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->MONITOREXIT:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    aput-object v1, p0, v0

    return-void
.end method
