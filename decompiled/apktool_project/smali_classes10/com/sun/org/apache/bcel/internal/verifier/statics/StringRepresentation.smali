.class public Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;
.super Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/Visitor;


# instance fields
.field private n:Lcom/sun/org/apache/bcel/internal/classfile/Node;

.field private tostring:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/Node;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->n:Lcom/sun/org/apache/bcel/internal/classfile/Node;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Node;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    return-void
.end method

.method private toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;
    .locals 2

    const-string p0, ">>"

    const-string v0, "<<"

    const-string v1, "."

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :catch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please adapt \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to deal with objects of class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->n:Lcom/sun/org/apache/bcel/internal/classfile/Node;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitCode(Lcom/sun/org/apache/bcel/internal/classfile/Code;)V
    .locals 0

    const-string p1, "<CODE>"

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitCodeException(Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantClass(Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantDouble(Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantFieldref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantFloat(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantInteger(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantLong(Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantNameAndType(Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantUtf8(Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitDeprecated(Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitExceptionTable(Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitInnerClass(Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitInnerClasses(Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitLineNumber(Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitLineNumberTable(Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<LineNumberTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitLocalVariable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitLocalVariableTable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<LocalVariableTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitSignature(Lcom/sun/org/apache/bcel/internal/classfile/Signature;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitSourceFile(Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitStackMap(Lcom/sun/org/apache/bcel/internal/classfile/StackMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitSynthetic(Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method

.method public visitUnknown(Lcom/sun/org/apache/bcel/internal/classfile/Unknown;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->toString(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/StringRepresentation;->tostring:Ljava/lang/String;

    return-void
.end method
