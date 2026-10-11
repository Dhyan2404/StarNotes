.class Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;
.super Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerClassDetector"
.end annotation


# instance fields
.field private cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private hasInnerClass:Z

.field private jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

.field final synthetic this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;


# direct methods
.method private constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->this$0:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/EmptyVisitor;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    .line 5
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    .line 6
    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getConstantPool()Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    .line 7
    new-instance p1, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-direct {p1, p2, p0}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;-><init>(Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;Lcom/sun/org/apache/bcel/internal/classfile/Visitor;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/DescendingVisitor;->visit()V

    return-void
.end method


# virtual methods
.method public innerClassReferenced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    return p0
.end method

.method public visitConstantClass(Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->cp:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier$InnerClassDetector;->hasInnerClass:Z

    :cond_0
    return-void
.end method
