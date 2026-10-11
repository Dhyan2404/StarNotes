.class Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;
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
    name = "FAMRAV_Visitor"
.end annotation


# instance fields
.field private final cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V

    return-void
.end method


# virtual methods
.method public visitConstantFieldref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$200(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "\' used by \'"

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal descriptor (==signature) \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal class name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid field name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' referenced by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantFieldref \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has wrong tag!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantInterfaceMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$1000(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\' used by \'"

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v2

    const-string v4, "<clinit>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-eq v2, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class or interface initialization method \'<clinit>\' usually has VOID return type instead of \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Note this is really not a requirement of The Java Virtual Machine Specification, Second Edition."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal descriptor (==signature) \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal class name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid (interface) method name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' referenced by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantInterfaceMethodref \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has wrong tag!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitConstantMethodref(Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$900(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\'."

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$800(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\' used by \'"

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$FAMRAV_Visitor;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v0

    const-string v2, "<init>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    const-string v1, "Instance initialization method must have VOID return type."

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal descriptor (==signature) \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal class name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid (non-interface) method name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' referenced by \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConstantMethodref \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;->access$100(Lcom/sun/org/apache/bcel/internal/classfile/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has wrong tag!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
