.class public Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x58ab0710147f609cL


# instance fields
.field private m_shouldStripSpace:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPath;ZLcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;-><init>()V

    .line 4
    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setMatch(Lcom/sun/org/apache/xpath/internal/XPath;)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public getShouldStripSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeWhiteSpaceInfo(Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;)V

    return-void
.end method
