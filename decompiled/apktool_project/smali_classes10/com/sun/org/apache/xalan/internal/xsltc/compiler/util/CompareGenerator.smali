.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.source "SourceFile"


# static fields
.field private static CURRENT_INDEX:I = 0x2

.field private static DOM_INDEX:I = 0x1

.field private static LAST_INDEX:I = 0x5

.field private static LEVEL_INDEX:I = 0x3

.field private static TRANSLET_INDEX:I = 0x4


# instance fields
.field private ITERATOR_INDEX:I

.field private final _aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _iloadLast:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->ITERATOR_INDEX:I

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->CURRENT_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->CURRENT_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ISTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->DOM_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->LAST_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ILOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_iloadLast:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    const-string p1, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->getJCRefType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "iterator"

    invoke-virtual {p0, p3, p1, p2, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->addLocalVariable(Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/LocalVariableGen;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->ITERATOR_INDEX:I

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->ITERATOR_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->ITERATOR_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;

    invoke-direct {p1}, Lcom/sun/org/apache/bcel/internal/generic/ACONST_NULL;-><init>()V

    invoke-virtual {p7, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p0

    invoke-virtual {p7, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

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

    const/4 p0, -0x1

    return p0
.end method

.method public getLocalIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "current"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->CURRENT_INDEX:I

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->getLocalIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_iloadCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_aloadDom:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_aloadIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public loadLastNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_iloadLast:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_istoreCurrent:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public storeIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/CompareGenerator;->_astoreIterator:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
