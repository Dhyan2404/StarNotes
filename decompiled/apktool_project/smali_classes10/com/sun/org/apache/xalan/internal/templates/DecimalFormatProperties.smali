.class public Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x5b07b40a72bfea86L


# instance fields
.field m_dfs:Ljava/text/DecimalFormatSymbols;

.field private m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method


# virtual methods
.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    return-object p0
.end method

.method public getDecimalSeparator()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p0

    return p0
.end method

.method public getDigit()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result p0

    return p0
.end method

.method public getGroupingSeparator()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p0

    return p0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinusSign()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result p0

    return p0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/QName;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "decimal-format"

    return-object p0
.end method

.method public getPatternSeparator()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result p0

    return p0
.end method

.method public getPerMille()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result p0

    return p0
.end method

.method public getPercent()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercent()C

    move-result p0

    return p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x53

    return p0
.end method

.method public getZeroDigit()C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p0

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeDecimalFormats(Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;)V

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    return-void
.end method

.method public setDigit(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    return-void
.end method

.method public setMinusSign(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_qname:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    return-void
.end method

.method public setPerMille(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    return-void
.end method

.method public setPercent(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/DecimalFormatProperties;->m_dfs:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, p1}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    return-void
.end method
