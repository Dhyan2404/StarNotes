.class public Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;
.super Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x52a394c820bc6ab3L


# instance fields
.field private m_elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/WhiteSpaceInfo;-><init>(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->setStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public clearElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method

.method public getElements()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-object p0
.end method

.method public setElements(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method
