.class public Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x49513028de1a297aL


# instance fields
.field private m_argsQNameIDs:[I

.field public m_frameSize:I

.field m_inArgsSize:I

.field private m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

.field private m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

.field private m_priority:D

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

.field private m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_priority:D

    return-void
.end method


# virtual methods
.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_inArgsSize:I

    return-void
.end method

.method public endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStackGuard()Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/StackGuard;->checkForInfinateLoop()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushRTFContext()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popRTFContext()V

    return-void
.end method

.method public getMatch()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getMode()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "template"

    return-object p0
.end method

.method public getPriority()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_priority:D

    return-wide v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0
.end method

.method public getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x13

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;)V

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_matchPattern:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public setMode(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_mode:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setName(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_name:Lcom/sun/org/apache/xml/internal/utils/QName;

    return-void
.end method

.method public setPriority(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_priority:D

    return-void
.end method

.method public setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->m_stylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-void
.end method
