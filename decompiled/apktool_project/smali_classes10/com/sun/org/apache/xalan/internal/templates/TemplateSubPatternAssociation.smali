.class Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x7b8c69ad0478a9f6L


# instance fields
.field private m_next:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

.field private m_pattern:Ljava/lang/String;

.field m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

.field private m_targetString:Ljava/lang/String;

.field private m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

.field private m_wild:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_next:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_wild:Z

    return-void
.end method

.method private matchModes(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_next:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method public getDocOrderPos()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result p0

    return p0
.end method

.method public final getImportLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result p0

    return p0
.end method

.method public final getNext()Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_next:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    return-object p0
.end method

.method public final getStepPattern()Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    return-object p0
.end method

.method public final getTargetString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public final isWild()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_wild:Z

    return p0
.end method

.method public matchMode(Lcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->matchModes(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result p0

    return p0
.end method

.method public matches(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_stepPattern:Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xpath/internal/patterns/StepPattern;->getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D

    move-result-wide p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p1, v0, p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_template:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->matchModes(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/QName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setNext(Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_next:Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method public setTargetString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-void
.end method
