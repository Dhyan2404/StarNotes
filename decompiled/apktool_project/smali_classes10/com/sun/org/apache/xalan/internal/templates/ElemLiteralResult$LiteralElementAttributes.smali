.class public Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiteralElementAttributes"
.end annotation


# instance fields
.field private m_count:I

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    :cond_1
    :goto_0
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-direct {v1, p0, v3, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;Lcom/sun/org/apache/xalan/internal/templates/AVT;Lorg/w3c/dom/Element;)V

    :cond_5
    return-object v1
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-direct {v1, p0, v2, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;Lcom/sun/org/apache/xalan/internal/templates/AVT;Lorg/w3c/dom/Element;)V

    :cond_4
    return-object v1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-direct {v0, v1, p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;Lcom/sun/org/apache/xalan/internal/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
