.class public Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/Visitor;


# instance fields
.field private clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

.field private stack:Ljava/util/Stack;

.field private visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    return-void
.end method


# virtual methods
.method public current()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public predecessor()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->predecessor(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public predecessor(I)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    add-int/2addr p1, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public visit()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->clazz:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    return-void
.end method

.method public visitCode(Lcom/sun/org/apache/bcel/internal/classfile/Code;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitCodeException(Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantClass(Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantDouble(Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantFieldref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantFloat(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantInteger(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantLong(Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantNameAndType(Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantPool()[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantUtf8(Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitDeprecated(Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitExceptionTable(Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitInnerClass(Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitInnerClasses(Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->getInnerClasses()[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getFields()[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Field;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v0

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitLineNumber(Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitLineNumberTable(Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitLocalVariable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitLocalVariableTable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Method;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitSignature(Lcom/sun/org/apache/bcel/internal/classfile/Signature;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Signature;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitSourceFile(Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitStackMap(Lcom/sun/org/apache/bcel/internal/classfile/StackMap;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/StackMap;->getStackMap()[Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitStackMapEntry(Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/StackMapEntry;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitSynthetic(Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public visitUnknown(Lcom/sun/org/apache/bcel/internal/classfile/Unknown;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visitor:Lcom/sun/org/apache/bcel/internal/classfile/Visitor;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Unknown;->accept(Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method
