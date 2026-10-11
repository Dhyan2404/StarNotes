.class public Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# instance fields
.field public final m_attributeName:Ljava/lang/String;

.field public final m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

.field public final m_selection:Lcom/sun/org/apache/xpath/internal/objects/XObject;

.field public final m_sourceNode:Lorg/w3c/dom/Node;

.field public final m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

.field public final m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_sourceNode:Lorg/w3c/dom/Node;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_attributeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_selection:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    return-void
.end method
