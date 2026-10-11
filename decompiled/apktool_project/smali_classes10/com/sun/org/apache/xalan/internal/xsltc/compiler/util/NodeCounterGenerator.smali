.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;
.source "SourceFile"


# instance fields
.field private _aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public isExternal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method

.method public setTransletIndex(I)V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeCounterGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method
