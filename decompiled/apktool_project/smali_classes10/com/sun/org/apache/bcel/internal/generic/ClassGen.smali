.class public Lcom/sun/org/apache/bcel/internal/generic/ClassGen;
.super Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private attribute_vec:Ljava/util/ArrayList;

.field private class_name:Ljava/lang/String;

.field private class_name_index:I

.field private cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

.field private field_vec:Ljava/util/ArrayList;

.field private file_name:Ljava/lang/String;

.field private interface_vec:Ljava/util/ArrayList;

.field private major:I

.field private method_vec:Ljava/util/ArrayList;

.field private minor:I

.field private observers:Ljava/util/ArrayList;

.field private super_class_name:Ljava/lang/String;

.field private superclass_name_index:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 6

    .line 19
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    const/16 v0, 0x2d

    .line 21
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassNameIndex()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    .line 27
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    .line 28
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSourceFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->file_name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    .line 32
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    .line 33
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMajor()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    .line 34
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMinor()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    .line 35
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    .line 39
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 40
    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    .line 41
    :goto_1
    array-length v4, v0

    if-ge p1, v4, :cond_1

    .line 42
    aget-object v4, v0, p1

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 43
    :goto_2
    array-length v0, v1

    if-ge p1, v0, :cond_2

    .line 44
    aget-object v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 45
    :cond_2
    :goto_3
    array-length p1, v2

    if-ge v3, p1, :cond_3

    .line 46
    aget-object p1, v2, v3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7

    .line 18
    new-instance v6, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-direct {v6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    const/16 v0, 0x2d

    .line 3
    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->file_name:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    .line 12
    iput-object p6, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    if-eqz p3, :cond_0

    .line 13
    new-instance p4, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    const-string v0, "SourceFile"

    invoke-virtual {p6, v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p6, p3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p6}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p4, v0, v2, p3, v1}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;-><init>(IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    .line 14
    :cond_0
    invoke-virtual {p6, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    .line 15
    invoke-virtual {p6, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    if-eqz p5, :cond_1

    const/4 p1, 0x0

    .line 16
    :goto_0
    array-length p2, p5

    if-ge p1, p2, :cond_1

    .line 17
    aget-object p2, p5, p1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEmptyConstructor(I)V
    .locals 10

    new-instance v7, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    invoke-direct {v7}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;-><init>()V

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->THIS:Lcom/sun/org/apache/bcel/internal/generic/LocalVariableInstruction;

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    const-string v3, "<init>"

    const-string v4, "()V"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->RETURN:Lcom/sun/org/apache/bcel/internal/generic/ReturnInstruction;

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v9, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;

    sget-object v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->NO_ARGS:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    const/4 v4, 0x0

    const-string v5, "<init>"

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    iget-object v8, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-object v0, v9

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const/4 p1, 0x1

    invoke-virtual {v9, p1}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->setMaxStack(I)V

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getMethod()Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method public addField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObserver(Lcom/sun/org/apache/bcel/internal/generic/ClassObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->observers:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->observers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public containsField(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Field;
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    .line 4
    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public containsField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsMethod(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    return-object p0
.end method

.method public getClassNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    return p0
.end method

.method public getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-object p0
.end method

.method public getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->file_name:Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaceNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getInterfaces()[I
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 13

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getInterfaces()[I

    move-result-object v8

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v11

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getFinalConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v7

    new-instance v12, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->file_name:Ljava/lang/String;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    iget v5, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    iget v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;-><init>(IILjava/lang/String;IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;[I[Lcom/sun/org/apache/bcel/internal/classfile/Field;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V

    return-object v12
.end method

.method public getMajor()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    return p0
.end method

.method public getMethodAt(I)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    return-object p0
.end method

.method public getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getMinor()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    return p0
.end method

.method public getSuperclassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperclassNameIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    return p0
.end method

.method public removeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->attribute_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeInterface(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->interface_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/sun/org/apache/bcel/internal/generic/ClassObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->observers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public replaceField(Lcom/sun/org/apache/bcel/internal/classfile/Field;Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->field_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Replacement method must not be null"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;

    const-string p1, "Replacement method must not be null"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    return-void
.end method

.method public setClassNameIndex(I)V
    .locals 2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name_index:I

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->class_name:Ljava/lang/String;

    return-void
.end method

.method public setConstantPool(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    return-void
.end method

.method public setMajor(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->major:I

    return-void
.end method

.method public setMethodAt(Lcom/sun/org/apache/bcel/internal/classfile/Method;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMethods([Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->method_vec:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->addMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMinor(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->minor:I

    return-void
.end method

.method public setSuperclassName(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    return-void
.end method

.method public setSuperclassNameIndex(I)V
    .locals 2

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->superclass_name_index:I

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->cp:Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->super_class_name:Ljava/lang/String;

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/generic/ClassObserver;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ClassObserver;->notify(Lcom/sun/org/apache/bcel/internal/generic/ClassGen;)V

    goto :goto_0

    :cond_0
    return-void
.end method
