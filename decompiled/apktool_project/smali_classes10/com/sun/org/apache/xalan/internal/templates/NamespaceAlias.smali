.class public Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x654a7ce453a441eL


# instance fields
.field private m_ResultNamespace:Ljava/lang/String;

.field private m_ResultPrefix:Ljava/lang/String;

.field private m_StylesheetNamespace:Ljava/lang/String;

.field private m_StylesheetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method


# virtual methods
.method public getResultNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getResultPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getStylesheetNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getStylesheetPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recomposeNamespaceAliases(Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;)V

    return-void
.end method

.method public setResultNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-void
.end method

.method public setResultPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-void
.end method

.method public setStylesheetNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-void
.end method

.method public setStylesheetPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-void
.end method
