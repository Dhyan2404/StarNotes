.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedNamespaceIterator"
.end annotation


# instance fields
.field private _nsPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;I)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->access$100(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;)Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;->_nsPrefix:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public next()I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;->_nsPrefix:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;->next()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;->_nsPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl$TypedNamespaceIterator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method
