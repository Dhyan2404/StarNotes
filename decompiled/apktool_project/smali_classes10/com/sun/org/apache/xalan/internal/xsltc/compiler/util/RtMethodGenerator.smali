.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RtMethodGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;
.source "SourceFile"


# static fields
.field private static final HANDLER_INDEX:I = 0x2


# instance fields
.field private final _aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;-><init>(ILcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ASTORE;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RtMethodGenerator;->_astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RtMethodGenerator;->_aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method


# virtual methods
.method public getIteratorIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLocalIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RtMethodGenerator;->_aloadHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public final storeHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/RtMethodGenerator;->_astoreHandler:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
