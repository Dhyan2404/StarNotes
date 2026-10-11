.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Constants;


# static fields
.field public static final Attribute:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Comment:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Element:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final ObjectString:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Processing_Instruction:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Text:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

.field public static final Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/IntType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RealType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeSetType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ReferenceType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/VoidType;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/VoidType;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ObjectString:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Element:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Attribute:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Text:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Comment:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Processing_Instruction:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newObjectType(Ljava/lang/Class;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1

    .line 4
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    .line 6
    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    .line 7
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ObjectString:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    .line 8
    :cond_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newObjectType(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1

    const-string v0, "java.lang.Object"

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    :cond_0
    const-string v0, "java.lang.String"

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ObjectString:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public ADD()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public CMP(Z)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public DIV()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public DUP()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    return-object p0
.end method

.method public GE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public GT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public LE(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public LOAD(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public LT(Z)Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public MUL()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public NEG()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public POP()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    return-object p0
.end method

.method public REM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public STORE(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public SUB()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public distanceTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z
.end method

.method public implementedAsMethod()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNumber()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimple()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;
.end method

.method public abstract toSignature()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public translateBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 3

    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public translateFrom(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 1

    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 1

    .line 1
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Ljava/lang/Class;)V
    .locals 1

    .line 3
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method

.method public translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 1

    .line 4
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v0, p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 1

    .line 1
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p3, v0, :cond_0

    .line 2
    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public translateUnBox(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 2

    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DATA_CONVERSION_ERR"

    invoke-direct {p2, v1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    return-void
.end method
