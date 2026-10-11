.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public backPatch(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;->setTarget(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    :cond_1
    return-void
.end method

.method public copyAndRedirect(Lcom/sun/org/apache/bcel/internal/generic/InstructionList;Lcom/sun/org/apache/bcel/internal/generic/InstructionList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;
    .locals 6

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->_elements:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
