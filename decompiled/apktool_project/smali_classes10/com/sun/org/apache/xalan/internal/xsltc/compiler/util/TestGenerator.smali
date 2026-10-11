.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.source "SourceFile"


# static fields
.field private static CONTEXT_NODE_INDEX:I = 0x1

.field private static CURRENT_NODE_INDEX:I = 0x4

.field private static ITERATOR_INDEX:I = 0x6


# instance fields
.field private _aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _iloadContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _istoreContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->CURRENT_NODE_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->CURRENT_NODE_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->CONTEXT_NODE_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_iloadContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->CONTEXT_NODE_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_istoreContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->ITERATOR_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->ITERATOR_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method


# virtual methods
.method public getHandlerIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getIteratorIndex()I
    .locals 0

    sget p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->ITERATOR_INDEX:I

    return p0
.end method

.method public getLocalIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->CURRENT_NODE_INDEX:I

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_iloadContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public setDomIndex(I)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method

.method public storeContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_istoreContext:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TestGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
