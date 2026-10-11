.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
.source "SourceFile"


# instance fields
.field private _importPrecedence:I

.field private _position:I

.field private _priority:D

.field private _template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_position:I

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->getAxis()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method

.method public abstract getKernelPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;
.end method

.method public final getPriority()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->getDefaultPriority()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    :goto_0
    return-wide v0
.end method

.method public getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    return-object p0
.end method

.method public abstract isWildcard()Z
.end method

.method public noSmallerThan(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;)Z
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_importPrecedence:I

    iget v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_importPrecedence:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    iget-wide v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    return v2

    :cond_1
    cmpl-double v0, v0, v3

    if-nez v0, :cond_2

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_position:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_position:I

    if-le p0, p1, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public abstract reduceKernelPattern()V
.end method

.method public setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPriority()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_priority:D

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_importPrecedence:I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocationPathPattern;->_position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "root()"

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
