.class public final Lcom/sun/org/apache/bcel/internal/classfile/Method;
.super Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>()V

    return-void
.end method

.method public constructor <init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(III[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Visitor;->visitMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V

    return-void
.end method

.method public final copy(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Method;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->copy_(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    return-object p0
.end method

.method public getArgumentTypes()[Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method

.method public final getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExceptionTable()Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v1, v1, v0

    instance-of v2, v1, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLineNumberTable()Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getCode()Lcom/sun/org/apache/bcel/internal/classfile/Code;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReturnType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->access_flags:I

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->signature_index:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->name_index:I

    invoke-virtual {v2, v4, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getLocalVariableTable()Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes_count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    aget-object v2, v2, v0

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->getExceptionTable()Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t\tthrows "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
