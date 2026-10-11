.class Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;
.super Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/classfile/Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPESSC_Visitor"
.end annotation


# instance fields
.field private CONST_Class:Ljava/lang/Class;

.field private CONST_Double:Ljava/lang/Class;

.field private CONST_Float:Ljava/lang/Class;

.field private CONST_Integer:Ljava/lang/Class;

.field private CONST_Long:Ljava/lang/Class;

.field private CONST_NameAndType:Ljava/lang/Class;

.field private CONST_String:Ljava/lang/Class;

.field private CONST_Utf8:Ljava/lang/Class;

.field private carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

.field private final cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private final cplen:I

.field private field_names:Ljava/util/HashSet;

.field private field_names_and_desc:Ljava/util/HashSet;

.field private final jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

.field private method_names_and_desc:Ljava/util/HashSet;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/HashSet;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/HashSet;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/HashSet;

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    .line 7
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    .line 8
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getLength()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    .line 9
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    .line 10
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_String:Ljava/lang/Class;

    .line 11
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Integer:Ljava/lang/Class;

    .line 12
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Float:Ljava/lang/Class;

    .line 13
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Long:Ljava/lang/Class;

    .line 14
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Double:Ljava/lang/Class;

    .line 15
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    .line 16
    const-class p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    .line 17
    new-instance p1, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    invoke-direct {p1, p2, p0}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    .line 18
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visit()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method

.method private checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V
    .locals 4

    const-string v0, "\'."

    if-ltz p2, :cond_1

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    if-ge p2, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal constant \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' at index \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\'. \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' expects a \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' used by \'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public visitCode(Lcom/sun/org/apache/bcel/internal/classfile/Code;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v2

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\'."

    if-eqz v3, :cond_16

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    const-string v3, "Code attribute \'"

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not declared in a method_info structure but in \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'. Ignored."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v5

    array-length v5, v5

    const-string v6, "\' (method \'"

    if-eqz v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v5

    const/4 v8, 0x0

    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_7

    aget-object v9, v5, v8

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getCatchType()I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {v0, v1, v9, v10}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v10

    iget-object v11, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v9

    check-cast v9, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2f

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v10

    sget-object v11, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const-string v12, "\' that references \'"

    const-string v13, "\') has an exception_table entry \'"

    if-ne v10, v11, :cond_5

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v10

    sget-object v11, Lcom/sun/org/apache/bcel/internal/generic/Type;->THROWABLE:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v11

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v14

    :goto_1
    if-eq v10, v14, :cond_3

    if-ne v10, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v15

    sget-object v7, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v15, v7, :cond_2

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v10

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v5, v8

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' as an Exception but \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in the ancestor hierachy does not pass verification pass 1: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-ne v10, v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v5, v8

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' as an Exception but it is not a subclass of \'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v5, v8

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' as an Exception but it does not pass verification pass 1: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$400(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v3

    const/4 v5, 0x0

    :goto_4
    array-length v7, v3

    if-ge v5, v7, :cond_9

    aget-object v7, v3, v5

    if-ne v2, v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    :goto_5
    if-ltz v5, :cond_14

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$500(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    move-result-object v3

    new-instance v7, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;-><init>(I)V

    aput-object v7, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    array-length v9, v3

    if-ge v7, v9, :cond_13

    aget-object v9, v3, v7

    instance-of v10, v9, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    const-string v11, "\' as an attribute of Code attribute \'"

    const-string v12, "Attribute \'"

    if-nez v10, :cond_a

    instance-of v9, v9, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-nez v9, :cond_a

    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v3, v7

    invoke-static {v12}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\') is unknown and will therefore be ignored."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v3, v7

    invoke-static {v12}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\') will effectively be ignored and is only useful for debuggers and such."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :goto_7
    aget-object v9, v3, v7

    instance-of v10, v9, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    if-eqz v10, :cond_12

    check-cast v9, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v10

    iget-object v11, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v0, v9, v10, v11}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v10

    check-cast v10, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v10}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v10

    const-string v11, "LocalVariableTable"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object v10

    const/4 v11, 0x0

    :goto_8
    array-length v12, v10

    if-ge v11, v12, :cond_f

    aget-object v12, v10, v11

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getNameIndex()I

    move-result v12

    iget-object v13, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v0, v9, v12, v13}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v12, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    aget-object v13, v10, v11

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getNameIndex()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$600(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    aget-object v13, v10, v11

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignatureIndex()I

    move-result v13

    iget-object v14, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {v0, v9, v13, v14}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v13, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    aget-object v14, v10, v11

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignatureIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v13

    check-cast v13, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v13}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v13

    :try_start_0
    invoke-static {v13}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_1

    aget-object v14, v10, v11

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getIndex()I

    move-result v17

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v13, v14, :cond_c

    sget-object v14, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v13, v14, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v14, v17

    goto :goto_a

    :cond_c
    :goto_9
    add-int/lit8 v14, v17, 0x1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v15

    if-ge v14, v15, :cond_d

    :try_start_1
    iget-object v14, v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-static {v14}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$500(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)[Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;

    move-result-object v14

    aget-object v16, v14, v5

    aget-object v14, v10, v11

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v19

    aget-object v14, v10, v11

    invoke-virtual {v14}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v20

    move-object/from16 v18, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lcom/sun/org/apache/bcel/internal/verifier/statics/LocalVariablesInfo;->add(ILjava/lang/String;IILcom/sun/org/apache/bcel/internal/generic/Type;)V
    :try_end_1
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/LocalVariableInfoInconsistentException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting information in LocalVariableTable \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' found in Code attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'). "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalVariableTable attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' references a LocalVariable \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v11

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' with an index that exceeds the surrounding Code attribute\'s max_locals value of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal descriptor (==signature) \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' used by LocalVariable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v10, v11

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' referenced by \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalVariableTable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' references a local variable by the name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' which is not a legal Java simple name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    add-int/lit8 v8, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v9

    if-gt v8, v9, :cond_10

    goto :goto_b

    :cond_10
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of LocalVariableTable attributes of Code attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\') exceeds number of local variable slots \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' (\'There may be no more than one LocalVariableTable attribute per local variable in the Code attribute.\')."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The LocalVariableTable attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not correctly named \'LocalVariableTable\' but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_13
    return-void

    :cond_14
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;

    const-string v1, "Could not find a known BCEL Method object in the corresponding BCEL JavaClass object."

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code array of Code attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\') must not be empty."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Code attribute \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not correctly named \'Code\' but \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitCodeException(Lcom/sun/org/apache/bcel/internal/classfile/CodeException;)V
    .locals 0

    return-void
.end method

.method public visitConstantClass(Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantDouble(Lcom/sun/org/apache/bcel/internal/classfile/ConstantDouble;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantFieldref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantFloat(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFloat;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantInteger(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInteger;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantLong(Lcom/sun/org/apache/bcel/internal/classfile/ConstantLong;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_NameAndType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantNameAndType(Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantPool(Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0

    return-void
.end method

.method public visitConstantString(Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantUtf8(Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong constant tag in \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantValue(Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->carrier:Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->predecessor()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v3

    if-ltz v3, :cond_6

    iget v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cplen:I

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Long:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Float:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Double:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Integer:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_String:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal type of ConstantValue \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' embedding Constant \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'. It is referenced by field \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' expecting a different type: \'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' used by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void

    :cond_8
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The ConstantValue attribute \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'ConstantValue\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitDeprecated(Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Deprecated attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'Deprecated\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitExceptionTable(Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aget v3, v0, v1

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v3, v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v4

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const-string v6, "\' references \'"

    const-string v7, "Exceptions attribute \'"

    if-ne v4, v5, :cond_4

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v4

    sget-object v5, Lcom/sun/org/apache/bcel/internal/generic/Type;->THROWABLE:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v5

    sget-object v8, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v8

    :goto_1
    if-eq v4, v8, :cond_2

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v9

    sget-object v10, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v9, v10, :cond_1

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as an Exception but \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in the ancestor hierachy does not pass verification pass 1: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    if-ne v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as an Exception but it is not a subclass of \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as an Exception but it does not pass verification pass 1: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Exceptions attribute \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'Exceptions\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result v0

    const-string v1, "Field \'"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPrivate()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isProtected()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must only have at most one of its ACC_FINAL, ACC_VOLATILE modifiers set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPublic()Z

    move-result v0

    const-string v2, "Interface field \'"

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0xe0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_VOLATILE, ACC_TRANSIENT set (ignored)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getNameIndex()I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$200(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More than one field of name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' detected (but with different type descriptors). This is very unusual."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names_and_desc:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->field_names:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_a

    aget-object v2, v0, v1

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    const-string v4, "\' as an attribute of Field \'"

    const-string v5, "Attribute \'"

    if-nez v3, :cond_8

    instance-of v3, v2, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;

    if-nez v3, :cond_8

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is unknown and will therefore be ignored."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_8
    aget-object v2, v0, v1

    instance-of v2, v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is not a ConstantValue and is therefore only of use for debuggers and such."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void

    :cond_b
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No two fields (like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') are allowed have same names and descriptors!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal descriptor (==signature) \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' used by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has illegal name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have the ACC_FINAL modifier set but hasn\'t!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have the ACC_STATIC modifier set but hasn\'t!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have the ACC_PUBLIC modifier set but hasn\'t!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitInnerClass(Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;)V
    .locals 0

    return-void
.end method

.method public visitInnerClasses(Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->getInnerClasses()[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerClassIndex()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getOuterClassIndex()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Class:Ljava/lang/Class;

    invoke-direct {p0, p1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerNameIndex()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerAccessFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x620

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown access flag for inner class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' set (InnerClasses attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\')."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The InnerClasses attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'InnerClasses\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitJavaClass(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 9

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->innerClassReferenced()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, v0

    const-string v6, "A Classfile structure (like \'"

    if-ge v2, v5, :cond_6

    aget-object v5, v0, v2

    instance-of v7, v5, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    if-nez v7, :cond_0

    instance-of v7, v5, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;

    if-nez v7, :cond_0

    instance-of v7, v5, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;

    if-nez v7, :cond_0

    instance-of v5, v5, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v2

    invoke-static {v8}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' as an attribute of the ClassFile structure \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' is unknown and will therefore be ignored."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_0
    aget-object v5, v0, v2

    instance-of v7, v5, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-nez v4, :cond_1

    move v4, v8

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A ClassFile structure (like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') may have no more than one SourceFile attribute."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    instance-of v5, v5, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;

    if-eqz v5, :cond_5

    if-nez v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    :goto_2
    if-nez v1, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No referenced Inner Class found, but InnerClasses attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v2

    invoke-static {v7}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' found. Strongly suggest removal of that attribute."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). More than one InnerClasses attribute was found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') must have exactly one InnerClasses attribute if at least one Inner Class is referenced (which is the case). No InnerClasses attribute was found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public visitLineNumber(Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;)V
    .locals 0

    return-void
.end method

.method public visitLineNumberTable(Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LineNumberTable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The LineNumberTable attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'LineNumberTable\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitLocalVariable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;)V
    .locals 0

    return-void
.end method

.method public visitLocalVariableTable(Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;)V
    .locals 0

    return-void
.end method

.method public visitMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$300(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "\' has illegal name \'"

    const-string v4, "\'."

    const-string v5, "Method \'"

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v2

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v2, v6}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignatureIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v8, v6, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v8, :cond_0

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v6

    :cond_0
    instance-of v8, v6, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v8, :cond_2

    check-cast v6, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v6

    sget-object v8, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v6, v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has a return type that does not pass verification pass 1: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v6, 0x0

    move v8, v6

    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_6

    aget-object v9, v7, v8

    instance-of v10, v9, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    if-eqz v10, :cond_3

    check-cast v9, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;->getBasicType()Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v9

    :cond_3
    instance-of v10, v9, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    if-eqz v10, :cond_5

    check-cast v9, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v9

    sget-object v10, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v9, v10, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has an argument type that does not pass verification pass 1: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    const-string v8, "<clinit>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    array-length v7, v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. It\'s name resembles the class or interface initialization method which it isn\'t because of its arguments (==descriptor)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->isClass()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPrivate()Z

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isProtected()Z

    move-result v7

    if-eqz v7, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPublic()Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-gt v3, v1, :cond_11

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v3

    const-string v7, "Abstract method \'"

    if-nez v3, :cond_10

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStrictfp()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isSynchronized()Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_4

    :cond_b
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_SYNCHRONIZED modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_STRICT modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_STATIC modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_PRIVATE modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_NATIVE modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have the ACC_FINAL modifier set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must only have at most one of its ACC_PRIVATE, ACC_PROTECTED, ACC_PUBLIC modifiers set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPublic()Z

    move-result v3

    const-string v7, "Interface method \'"

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isProtected()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isSynchronized()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStrictfp()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4

    :cond_13
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have any of the ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT modifiers set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have the ACC_STATIC modifier set but hasn\'t!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have the ACC_PUBLIC modifier set but hasn\'t!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_4
    const-string v3, "<init>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isStatic()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isFinal()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isSynchronized()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_5

    :cond_17
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instance initialization method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have any of the ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT modifiers set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x801

    const-string v7, "Class or interface initialization method \'"

    if-lez v3, :cond_19

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' has superfluous access modifier(s) set: everything but ACC_STRICT is ignored."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not be abstract. This contradicts the Java Language Specification, Second Edition (which omits this constraint) but is common practice of existing verifiers."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_6
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0xd40

    if-lez v3, :cond_1c

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has access flag(s) other than ACC_PUBLIC, ACC_PRIVATE, ACC_PROTECTED, ACC_STATIC, ACC_FINAL, ACC_SYNCHRONIZED, ACC_NATIVE, ACC_ABSTRACT, ACC_STRICT set (ignored)."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->method_names_and_desc:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v0

    move v2, v6

    :goto_7
    array-length v3, v0

    if-ge v6, v3, :cond_22

    aget-object v3, v0, v6

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    const-string v7, "\' as an attribute of Method \'"

    const-string v8, "Attribute \'"

    if-nez v5, :cond_1d

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    if-nez v5, :cond_1d

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;

    if-nez v5, :cond_1d

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/classfile/Deprecated;

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v6

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is unknown and will therefore be ignored."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_1d
    aget-object v3, v0, v6

    instance-of v5, v3, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-nez v5, :cond_1e

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v6

    invoke-static {v8}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is neither Code nor Exceptions and is therefore only of use for debuggers and such."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_1e
    aget-object v3, v0, v6

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-eqz v3, :cond_20

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_8

    :cond_1f
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native or abstract methods like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must not have a Code attribute like \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, v6

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_8
    aget-object v3, v0, v6

    instance-of v3, v3, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    if-eqz v3, :cond_21

    add-int/lit8 v2, v2, 0x1

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_22
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isNative()Z

    move-result p0

    if-nez p0, :cond_24

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->isAbstract()Z

    move-result p0

    if-nez p0, :cond_24

    if-ne v2, v1, :cond_23

    goto :goto_9

    :cond_23
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-native, non-abstract methods like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must have exactly one Code attribute (found: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_9
    return-void

    :cond_25
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No two methods (like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') are allowed have same names and desciptors!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal descriptor (==signature) \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' used by Method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitSourceFile(Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;->getSourceFileIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;->getSourceFileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceFile attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has a funny name: remember not to confuse certain parsers working on javap\'s output. Also, this name (\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\') is considered an unqualified (simple) file name only."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SourceFile attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'SourceFile\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitSynthetic(Lcom/sun/org/apache/bcel/internal/classfile/Synthetic;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Synthetic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Synthetic attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not correctly named \'Synthetic\' but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitUnknown(Lcom/sun/org/apache/bcel/internal/classfile/Unknown;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getNameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->CONST_Utf8:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->checkIndex(Lcom/sun/org/apache/bcel/internal/classfile/Node;ILjava/lang/Class;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$CPESSC_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown attribute \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. This attribute is not known in any context!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V

    return-void
.end method
