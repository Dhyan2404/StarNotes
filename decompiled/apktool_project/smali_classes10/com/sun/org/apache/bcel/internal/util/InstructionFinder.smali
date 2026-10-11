.class public Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;
    }
.end annotation


# static fields
.field private static final NO_OPCODES:I = 0x100

.field private static final OFFSET:I = 0x7fff

.field private static final map:Ljava/util/HashMap;


# instance fields
.field private handles:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

.field private il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

.field private il_string:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->map:Ljava/util/HashMap;

    const-string v1, "arithmeticinstruction"

    const-string v2, "(irem|lrem|iand|ior|ineg|isub|lneg|fneg|fmul|ldiv|fadd|lxor|frem|idiv|land|ixor|ishr|fsub|lshl|fdiv|iadd|lor|dmul|lsub|ishl|imul|lmul|lushr|dneg|iushr|lshr|ddiv|drem|dadd|ladd|dsub)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "invokeinstruction"

    const-string v2, "(invokevirtual|invokeinterface|invokestatic|invokespecial)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arrayinstruction"

    const-string v2, "(baload|aastore|saload|caload|fastore|lastore|iaload|castore|iastore|aaload|bastore|sastore|faload|laload|daload|dastore)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gotoinstruction"

    const-string v2, "(goto|goto_w)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "conversioninstruction"

    const-string v2, "(d2l|l2d|i2s|d2i|l2i|i2b|l2f|d2f|f2i|i2d|i2l|f2d|i2c|f2l|i2f)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "localvariableinstruction"

    const-string v2, "(fstore|iinc|lload|dstore|dload|iload|aload|astore|istore|fload|lstore)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loadinstruction"

    const-string v2, "(fload|dload|lload|iload|aload)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fieldinstruction"

    const-string v2, "(getfield|putstatic|getstatic|putfield)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cpinstruction"

    const-string v2, "(ldc2_w|invokeinterface|multianewarray|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|ldc_w|invokestatic|invokevirtual|putfield|ldc|new|anewarray)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stackinstruction"

    const-string v2, "(dup2|swap|dup2_x2|pop|pop2|dup|dup2_x1|dup_x2|dup_x1)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "branchinstruction"

    const-string v2, "(ifle|if_acmpne|if_icmpeq|if_acmpeq|ifnonnull|goto_w|iflt|ifnull|if_icmpne|tableswitch|if_icmple|ifeq|if_icmplt|jsr_w|if_icmpgt|ifgt|jsr|goto|ifne|ifge|lookupswitch|if_icmpge)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "returninstruction"

    const-string v3, "(lreturn|ireturn|freturn|dreturn|areturn|return)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storeinstruction"

    const-string v3, "(istore|fstore|dstore|astore|lstore)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "select"

    const-string v3, "(tableswitch|lookupswitch)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ifinstruction"

    const-string v3, "(ifeq|ifgt|if_icmpne|if_icmpeq|ifge|ifnull|ifne|if_icmple|if_icmpge|if_acmpeq|if_icmplt|if_acmpne|ifnonnull|iflt|if_icmpgt|ifle)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jsrinstruction"

    const-string v3, "(jsr|jsr_w)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "variablelengthinstruction"

    const-string v3, "(tableswitch|jsr|goto|lookupswitch)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unconditionalbranch"

    const-string v3, "(goto|jsr|jsr_w|athrow|goto_w)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "constantpushinstruction"

    const-string v3, "(dconst|bipush|sipush|fconst|iconst|lconst)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "typedinstruction"

    const-string v3, "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dastore|ret|f2d|f2i|drem|iinc|i2c|checkcast|frem|lreturn|astore|lushr|daload|dneg|fastore|istore|lshl|ldiv|lstore|areturn|ishr|ldc_w|invokeinterface|aastore|lxor|ishl|l2d|i2f|return|faload|sipush|iushr|caload|instanceof|invokespecial|putfield|fmul|ireturn|laload|d2f|lneg|ixor|i2l|fdiv|lastore|multianewarray|i2b|getstatic|i2d|putstatic|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|freturn|ldc|aconst_null|castore|lmul|ldc2_w|dadd|iconst|f2l|ddiv|dstore|land|jsr|anewarray|dmul|bipush|dsub|sastore|d2i|i2s|lshr|iadd|l2i|lload|bastore|fstore|fneg|iload|fadd|baload|fconst|ior|ineg|dreturn|l2f|lconst|getfield|invokevirtual|invokestatic|iastore)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "popinstruction"

    const-string v3, "(fstore|dstore|pop|pop2|astore|putstatic|istore|lstore)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "allocationinstruction"

    const-string v3, "(multianewarray|new|anewarray|newarray)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indexedinstruction"

    const-string v3, "(lload|lstore|fload|ldc2_w|invokeinterface|multianewarray|astore|dload|putstatic|instanceof|getstatic|checkcast|getfield|invokespecial|dstore|istore|iinc|ldc_w|ret|fstore|invokestatic|iload|putfield|invokevirtual|ldc|new|aload|anewarray)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pushinstruction"

    const-string v3, "(dup|lload|dup2|bipush|fload|ldc2_w|sipush|lconst|fconst|dload|getstatic|ldc_w|aconst_null|dconst|iload|ldc|iconst|aload)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stackproducer"

    const-string v3, "(imul|lsub|aload|fload|lor|new|aaload|fcmpg|iand|iaload|lrem|idiv|d2l|isub|dcmpg|dup|f2d|f2i|drem|i2c|checkcast|frem|lushr|daload|dneg|lshl|ldiv|ishr|ldc_w|invokeinterface|lxor|ishl|l2d|i2f|faload|sipush|iushr|caload|instanceof|invokespecial|fmul|laload|d2f|lneg|ixor|i2l|fdiv|getstatic|i2b|swap|i2d|dup2|fcmpl|saload|ladd|irem|dload|jsr_w|dconst|dcmpl|fsub|ldc|arraylength|aconst_null|tableswitch|lmul|ldc2_w|iconst|dadd|f2l|ddiv|land|jsr|anewarray|dmul|bipush|dsub|d2i|newarray|i2s|lshr|iadd|lload|l2i|fneg|iload|fadd|baload|fconst|lookupswitch|ior|ineg|lconst|l2f|getfield|invokevirtual|invokestatic)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stackconsumer"

    const-string v3, "(imul|lsub|lor|iflt|fcmpg|if_icmpgt|iand|ifeq|if_icmplt|lrem|ifnonnull|idiv|d2l|isub|dcmpg|dastore|if_icmpeq|f2d|f2i|drem|i2c|checkcast|frem|lreturn|astore|lushr|pop2|monitorexit|dneg|fastore|istore|lshl|ldiv|lstore|areturn|if_icmpge|ishr|monitorenter|invokeinterface|aastore|lxor|ishl|l2d|i2f|return|iushr|instanceof|invokespecial|fmul|ireturn|d2f|lneg|ixor|pop|i2l|ifnull|fdiv|lastore|i2b|if_acmpeq|ifge|swap|i2d|putstatic|fcmpl|ladd|irem|dcmpl|fsub|freturn|ifgt|castore|lmul|dadd|f2l|ddiv|dstore|land|if_icmpne|if_acmpne|dmul|dsub|sastore|ifle|d2i|i2s|lshr|iadd|l2i|bastore|fstore|fneg|fadd|ior|ineg|ifne|dreturn|l2f|if_icmple|getfield|invokevirtual|invokestatic|iastore)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exceptionthrower"

    const-string v3, "(irem|lrem|laload|putstatic|baload|dastore|areturn|getstatic|ldiv|anewarray|iastore|castore|idiv|saload|lastore|fastore|putfield|lreturn|caload|getfield|return|aastore|freturn|newarray|instanceof|multianewarray|athrow|faload|iaload|aaload|dreturn|monitorenter|checkcast|bastore|arraylength|new|invokevirtual|sastore|ldc_w|ireturn|invokespecial|monitorexit|invokeinterface|ldc|invokestatic|daload)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loadclass"

    const-string v3, "(multianewarray|invokeinterface|instanceof|invokespecial|putfield|checkcast|putstatic|invokevirtual|new|getstatic|invokestatic|getfield|anewarray)"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instructiontargeter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "if_icmp"

    const-string v2, "(if_icmpne|if_icmpeq|if_icmple|if_icmpge|if_icmplt|if_icmpgt)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "if_acmp"

    const-string v2, "(if_acmpeq|if_acmpne)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "if"

    const-string v2, "(ifeq|ifne|iflt|ifge|ifgt|ifle)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v2

    const-string v4, "iconst"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x5

    new-array v5, v4, [C

    const/4 v6, 0x0

    const/16 v7, 0x28

    aput-char v7, v5, v6

    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v8

    const/4 v9, 0x1

    aput-char v8, v5, v9

    const/16 v8, 0x7c

    aput-char v8, v5, v3

    const/16 v10, 0xa

    invoke-static {v10}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v10

    aput-char v10, v5, v1

    const/4 v10, 0x4

    const/16 v11, 0x29

    aput-char v11, v5, v10

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "lconst"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    new-array v5, v4, [C

    aput-char v7, v5, v6

    const/16 v12, 0xe

    invoke-static {v12}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v12

    aput-char v12, v5, v9

    aput-char v8, v5, v3

    const/16 v12, 0xf

    invoke-static {v12}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v12

    aput-char v12, v5, v1

    aput-char v11, v5, v10

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "dconst"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v7, v4, v6

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v5

    aput-char v5, v4, v9

    aput-char v8, v4, v3

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v3

    aput-char v3, v4, v1

    aput-char v11, v4, v10

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    const-string v1, "fconst"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d

    const/16 v2, 0x15

    const/16 v3, 0x1a

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x26

    const/16 v2, 0x18

    invoke-static {v1, v11, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x25

    const/16 v2, 0x17

    const/16 v3, 0x22

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2d

    const/16 v2, 0x19

    const/16 v3, 0x2a

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aload"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3e

    const/16 v2, 0x36

    const/16 v3, 0x3b

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "istore"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    const/16 v2, 0x39

    const/16 v3, 0x47

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dstore"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    const/16 v2, 0x38

    const/16 v3, 0x43

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fstore"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    const/16 v2, 0x3a

    const/16 v3, 0x4b

    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->precompile(SSS)Ljava/lang/String;

    move-result-object v1

    const-string v2, "astore"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7fff

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v1, 0x100

    if-ge v6, v1, :cond_3

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Constants;->NO_OF_OPERANDS:[S

    aget-short v1, v1, v6

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0xff

    if-ge v6, v1, :cond_2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->map:Ljava/util/HashMap;

    const-string v2, "instruction"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->reread()V

    return-void
.end method

.method private static final compilePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x5f

    if-ne v3, v5, :cond_1

    :cond_0
    if-ge v2, p0, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, p0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->mapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMatch(II)[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 2

    new-array v0, p2, [Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->handles:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static final makeChar(S)C
    .locals 0

    add-int/lit16 p0, p0, 0x7fff

    int-to-char p0, p0

    return p0
.end method

.method private static final mapName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final pattern2string(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->pattern2string(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final pattern2string(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7fff

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_0

    .line 5
    sget-object v3, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    add-int/lit16 v2, v2, -0x7fff

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    add-int/lit16 v2, v2, -0x7fff

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static precompile(SSS)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-gt p0, p1, :cond_0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    return-object p0
.end method

.method public final reread()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getLength()I

    move-result v0

    new-array v1, v0, [C

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getInstructionHandles()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->handles:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->handles:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->makeChar(S)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il_string:Ljava/lang/String;

    return-void
.end method

.method public final search(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->compilePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->handles:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    if-eq v1, v4, :cond_5

    .line 4
    :try_start_0
    new-instance p2, Lcom/sun/org/apache/regexp/internal/RE;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/regexp/internal/RE;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il_string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il_string:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lcom/sun/org/apache/regexp/internal/RE;->match(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParenStart(I)I

    move-result v1

    .line 8
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParenEnd(I)I

    move-result v2

    .line 9
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/regexp/internal/RE;->getParenLength(I)I

    move-result v3

    .line 10
    invoke-direct {p0, v1, v3}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->getMatch(II)[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 11
    invoke-interface {p3, v1}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;->checkCode([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v2

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/regexp/internal/RESyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instruction handle "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found in instruction list."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sun/org/apache/bcel/internal/util/InstructionFinder;->search(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/util/InstructionFinder$CodeConstraint;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
