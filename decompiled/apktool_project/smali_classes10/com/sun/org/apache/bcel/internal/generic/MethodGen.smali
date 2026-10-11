.class public Lcom/sun/org/apache/bcel/internal/generic/MethodGen;
.super Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;,
        Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;
    }
.end annotation


# instance fields
.field private arg_names:[Ljava/lang/String;

.field private arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

.field private class_name:Ljava/lang/String;

.field private code_attrs_vec:Ljava/util/ArrayList;

.field private exception_vec:Ljava/util/ArrayList;

.field private il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

.field private line_number_vec:Ljava/util/ArrayList;

.field private max_locals:I

.field private max_stack:I

.field private observers:Ljava/util/ArrayList;

.field private strip_attributes:Z

.field private throws_vec:Ljava/util/ArrayList;

.field private variable_vec:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->setAccessFlags(I)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setArgumentTypes([Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    .line 10
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setArgumentNames([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p5}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p6}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setClassName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p7}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setInstructionList(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V

    .line 14
    invoke-virtual {p0, p8}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 16
    invoke-virtual {p7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p5

    .line 17
    invoke-virtual {p7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p7

    .line 18
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result p8

    if-nez p8, :cond_3

    if-eqz p6, :cond_3

    .line 19
    new-instance p8, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-direct {p8, p6}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    const-string p6, "this"

    invoke-virtual {p0, p6, p8, p5, p7}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    move-object p7, p5

    :cond_3
    :goto_2
    if-eqz p3, :cond_9

    .line 20
    array-length p6, p3

    move p8, p2

    :goto_3
    if-ge p8, p6, :cond_5

    .line 21
    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    aget-object v1, p3, p8

    if-eq v0, v1, :cond_4

    add-int/lit8 p8, p8, 0x1

    goto :goto_3

    .line 22
    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "\'void\' is an illegal argument type for a method"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz p4, :cond_7

    .line 23
    array-length p8, p4

    if-ne p6, p8, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mismatch in argument array lengths: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_7
    new-array p4, p6, [Ljava/lang/String;

    move p8, p2

    :goto_4
    if-ge p8, p6, :cond_8

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_4

    .line 27
    :cond_8
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setArgumentNames([Ljava/lang/String;)V

    :goto_5
    if-nez p1, :cond_9

    :goto_6
    if-ge p2, p6, :cond_9

    .line 28
    aget-object p1, p4, p2

    aget-object p8, p3, p2

    invoke-virtual {p0, p1, p8, p5, p7}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Method;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 15

    move-object v9, p0

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/4 v10, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>([B)V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v10

    :goto_0
    move-object v0, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 31
    :goto_1
    array-length v0, v6

    if-ge v8, v0, :cond_c

    .line 32
    aget-object v0, v6, v8

    .line 33
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-eqz v1, :cond_9

    .line 34
    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    .line 35
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxStack()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack(I)V

    .line 36
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxLocals(I)V

    .line 37
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v1

    if-eqz v1, :cond_3

    move v2, v7

    .line 38
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 39
    aget-object v3, v1, v2

    .line 40
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getCatchType()I

    move-result v4

    if-lez v4, :cond_1

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v5

    const/4 v11, 0x7

    invoke-virtual {v5, v4, v11}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-direct {v5, v4}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move-object v5, v10

    .line 43
    :goto_3
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getEndPC()I

    move-result v4

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v11

    array-length v11, v11

    if-ne v11, v4, :cond_2

    .line 45
    iget-object v4, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    goto :goto_4

    .line 46
    :cond_2
    iget-object v11, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v11, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getPrev()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    .line 48
    :goto_4
    iget-object v11, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getStartPC()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v11

    iget-object v12, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getHandlerPC()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {p0, v11, v4, v3, v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addExceptionHandler(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v11

    move v12, v7

    .line 50
    :goto_5
    array-length v0, v11

    if-ge v12, v0, :cond_b

    .line 51
    aget-object v0, v11, v12

    .line 52
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    if-eqz v1, :cond_4

    .line 53
    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object v0

    move v1, v7

    .line 54
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 55
    aget-object v2, v0, v1

    .line 56
    iget-object v3, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getLineNumber()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLineNumber(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 57
    :cond_4
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-eqz v1, :cond_7

    .line 58
    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object v13

    .line 59
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeLocalVariables()V

    move v14, v7

    .line 60
    :goto_7
    array-length v0, v13

    if-ge v14, v0, :cond_8

    .line 61
    aget-object v0, v13, v14

    .line 62
    iget-object v1, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    .line 63
    iget-object v2, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v3

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->findHandle(I)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v2

    if-nez v1, :cond_5

    .line 64
    iget-object v1, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    :cond_5
    move-object v4, v1

    if-nez v2, :cond_6

    .line 65
    iget-object v1, v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    move-object v5, v1

    goto :goto_8

    :cond_6
    move-object v5, v2

    .line 66
    :goto_8
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getIndex()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 67
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 68
    :cond_9
    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    if-eqz v1, :cond_a

    .line 69
    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->getExceptionNames()[Ljava/lang/String;

    move-result-object v0

    move v1, v7

    .line 70
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 71
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addException(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 72
    :cond_a
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method private getCodeExceptions()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getCodeException(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private getExceptionTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    const-string v2, "Exceptions"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;-><init>(II[ILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object p0
.end method

.method public static getMaxStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;)I
    .locals 7

    .line 2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;->getHandlerPC()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->push(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    move p2, v1

    move v2, p2

    :cond_2
    :goto_1
    if-eqz p1, :cond_c

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->getOpcode()S

    move-result v4

    .line 9
    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->produceStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v5

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/generic/Instruction;->consumeStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    if-le v2, p2, :cond_3

    move p2, v2

    .line 10
    :cond_3
    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    .line 11
    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;

    .line 12
    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/generic/Select;

    if-eqz v3, :cond_5

    .line 13
    move-object p1, v5

    check-cast p1, Lcom/sun/org/apache/bcel/internal/generic/Select;

    .line 14
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/Select;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    move v3, v1

    .line 15
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 16
    aget-object v4, p1, v3

    invoke-virtual {v0, v4, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->push(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object p1, v6

    goto :goto_4

    .line 17
    :cond_5
    instance-of v3, v5, Lcom/sun/org/apache/bcel/internal/generic/IfInstruction;

    if-nez v3, :cond_7

    const/16 v3, 0xa8

    if-eq v4, v3, :cond_6

    const/16 v3, 0xc9

    if-ne v4, v3, :cond_4

    .line 18
    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->push(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    goto :goto_3

    .line 19
    :cond_7
    :goto_4
    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;->getTarget()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->push(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    goto :goto_5

    :cond_8
    const/16 v3, 0xbf

    if-eq v4, v3, :cond_9

    const/16 v3, 0xa9

    if-eq v4, v3, :cond_9

    const/16 v3, 0xac

    if-lt v4, v3, :cond_a

    const/16 v3, 0xb1

    if-gt v4, v3, :cond_a

    :cond_9
    move-object p1, v6

    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    .line 20
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object p1

    :cond_b
    if-nez p1, :cond_2

    .line 21
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchStack;->pop()Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 22
    iget-object p1, v3, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;->target:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    .line 23
    iget v2, v3, Lcom/sun/org/apache/bcel/internal/generic/MethodGen$BranchTarget;->stackDepth:I

    goto :goto_1

    :cond_c
    return p2
.end method

.method private static final sort([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;II)V
    .locals 5

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v0

    move v1, p1

    move v2, p2

    :cond_0
    :goto_0
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result v3

    if-ge v0, v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_3

    aget-object v3, p0, v1

    aget-object v4, p0, v2

    aput-object v4, p0, v1

    aput-object v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-le v1, v2, :cond_0

    if-ge p1, v2, :cond_4

    invoke-static {p0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->sort([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;II)V

    :cond_4
    if-ge v1, p2, :cond_5

    invoke-static {p0, v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->sort([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;II)V

    :cond_5
    return-void
.end method


# virtual methods
.method public addCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addException(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExceptionHandler(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/ObjectType;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Exception handler target is null instruction"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addLineNumber(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType()B

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v0

    add-int/2addr v0, p3

    .line 3
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    if-le v0, v1, :cond_0

    .line 4
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    .line 5
    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-object v2, v0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;-><init>(ILjava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    .line 6
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not use "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as type for local variable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 6

    .line 10
    iget v3, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;ILcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    return-object p0
.end method

.method public addObserver(Lcom/sun/org/apache/bcel/internal/generic/MethodObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->observers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->observers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/MethodGen;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-direct {v1, v0, p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/Method;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    if-eq p1, p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->replaceConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    :cond_0
    return-object v1
.end method

.method public getArgumentName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_names:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getArgumentNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_names:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getArgumentType(I)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getArgumentTypes()[Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {p0}, [Lcom/sun/org/apache/bcel/internal/generic/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->class_name:Ljava/lang/String;

    return-object p0
.end method

.method public getCodeAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getExceptions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    return-object p0
.end method

.method public getLineNumberTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;->getLineNumber()Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    const-string v2, "LineNumberTable"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object p0
.end method

.method public getLineNumbers()[Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalVariableTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariables()[Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getLocalVariable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    const-string v2, "LocalVariableTable"

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;-><init>(II[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-object p0
.end method

.method public getLocalVariables()[Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setStart(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v4

    if-nez v4, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getEnd()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->setEnd(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-le v0, p0, :cond_3

    sub-int/2addr v0, p0

    invoke-static {v1, v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->sort([Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;II)V

    :cond_3
    return-object v1
.end method

.method public getMaxLocals()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    return p0
.end method

.method public getMaxStack()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_stack:I

    return p0
.end method

.method public getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v6

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v7

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getByteCode()[B

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    :cond_0
    move-object v13, v2

    :goto_0
    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->strip_attributes:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariableTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-boolean v3, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->strip_attributes:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLineNumberTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->addCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getCodeAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v15

    const/4 v4, 0x0

    move v5, v4

    move v8, v5

    :goto_3
    array-length v9, v15

    if-ge v5, v9, :cond_3

    aget-object v9, v15, v5

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getCodeExceptions()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v14

    array-length v5, v14

    mul-int/lit8 v5, v5, 0x8

    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v9

    :goto_4
    array-length v10, v9

    if-ge v4, v10, :cond_5

    aget-object v10, v9, v4

    instance-of v11, v10, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-eqz v11, :cond_4

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->removeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    new-instance v4, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    const-string v10, "Code"

    invoke-virtual {v9, v10}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v9

    array-length v10, v13

    add-int/lit8 v10, v10, 0x8

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v8

    iget v11, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_stack:I

    iget v12, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v16

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lcom/sun/org/apache/bcel/internal/classfile/Code;-><init>(IIII[B[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    move-object v10, v4

    goto :goto_5

    :cond_6
    move-object v10, v2

    :goto_5
    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getExceptionTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_7
    new-instance v11, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iget v5, v0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v8

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v9

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/sun/org/apache/bcel/internal/classfile/Method;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->removeCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->removeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->removeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    :cond_b
    return-object v11
.end method

.method public getReturnType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->getType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-static {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getMethodSignature(Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeCodeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCodeAttributes()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->code_attrs_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeException(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeExceptionHandler(Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeExceptionHandlers()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->exception_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeExceptions()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeLineNumber(Lcom/sun/org/apache/bcel/internal/generic/LineNumberGen;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLineNumbers()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->line_number_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeLocalVariable(Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLocalVariables()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->variable_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeNOPs()V
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->next:Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/generic/NOP;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->delete(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/generic/TargetLostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;->getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getTargeters()[Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;

    move-result-object v4

    move v5, v2

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_0

    aget-object v6, v4, v5

    aget-object v7, v0, v3

    invoke-interface {v6, v7, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionTargeter;->updateTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_3
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeObserver(Lcom/sun/org/apache/bcel/internal/generic/MethodObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->observers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setArgumentName(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_names:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method

.method public setArgumentNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_names:[Ljava/lang/String;

    return-void
.end method

.method public setArgumentType(ILcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    aput-object p2, p0, p1

    return-void
.end method

.method public setArgumentTypes([Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->class_name:Ljava/lang/String;

    return-void
.end method

.method public setInstructionList(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    return-void
.end method

.method public setMaxLocals()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    if-eqz v2, :cond_0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->getStart()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getInstruction()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/RET;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/generic/IINC;

    if-eqz v3, :cond_2

    .line 10
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;

    invoke-interface {v3}, Lcom/sun/org/apache/bcel/internal/generic/IndexedInstruction;->getIndex()I

    move-result v3

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-interface {v2, v4}, Lcom/sun/org/apache/bcel/internal/generic/TypedInstruction;->getType(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSize()I

    move-result v2

    add-int/2addr v3, v2

    if-le v3, v0, :cond_2

    move v0, v3

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;->getNext()Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_3
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    goto :goto_2

    .line 13
    :cond_4
    iput v1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    :goto_2
    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_locals:I

    return-void
.end method

.method public setMaxStack()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->il:Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getExceptionHandlers()[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMaxStack(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;[Lcom/sun/org/apache/bcel/internal/generic/CodeExceptionGen;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_stack:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_stack:I

    :goto_0
    return-void
.end method

.method public setMaxStack(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->max_stack:I

    return-void
.end method

.method public setReturnType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->setType(Lcom/sun/org/apache/bcel/internal/generic/Type;)V

    return-void
.end method

.method public stripAttributes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->strip_attributes:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-static {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getMethodSignature(Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/FieldGenOrMethodGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getLocalVariableTable(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4, v3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->throws_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tthrows "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/MethodObserver;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/MethodObserver;->notify(Lcom/sun/org/apache/bcel/internal/generic/MethodGen;)V

    goto :goto_0

    :cond_0
    return-void
.end method
