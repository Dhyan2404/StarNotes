.class Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComposeState"
.end annotation


# instance fields
.field private m_ent:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

.field m_marks:Lcom/sun/org/apache/xml/internal/utils/IntStack;

.field private m_maxStackFrameSize:I

.field private m_variableNames:Ljava/util/Vector;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->this$0:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_ent:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_marks:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->access$000(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->access$000(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addVariableName(Lcom/sun/org/apache/xml/internal/utils/QName;)I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    if-le p1, v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    :cond_0
    return v0
.end method

.method public getCurrentStackFrameSize()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getFrameSize()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return p0
.end method

.method public getGlobalsSize()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->this$0:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->access$000(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getQNameID(Lcom/sun/org/apache/xml/internal/utils/QName;)I
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_ent:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getVariableNames()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    return-object p0
.end method

.method public popStackMark()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_marks:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->pop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->setCurrentStackFrameSize(I)V

    return-void
.end method

.method public pushStackMark()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_marks:Lcom/sun/org/apache/xml/internal/utils/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getCurrentStackFrameSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/IntStack;->push(I)I

    return-void
.end method

.method public resetStackFrameSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return-void
.end method

.method public setCurrentStackFrameSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method
