.class public Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/trace/TraceListenerEx3;


# instance fields
.field m_indent:I

.field m_pw:Ljava/io/PrintWriter;

.field public m_traceElements:Z

.field public m_traceExtension:Z

.field public m_traceGeneration:Z

.field public m_traceSelection:Z

.field public m_traceTemplates:Z


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceTemplates:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceElements:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceGeneration:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceSelection:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceExtension:Z

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_indent:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public _trace(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
    .locals 7

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    const-string v2, ": "

    const-string v3, "Column #"

    const-string v4, ", "

    const-string v5, " Line #"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceElements:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceElements:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getColumnNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getChars()[C

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;->getChars()[C

    move-result-object p1

    array-length p1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceTemplates:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceElements:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getColumnNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    const-string v1, "\' "

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getMatch()Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;->getName()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_5
    :goto_0
    return-void
.end method

.method public extension(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceExtension:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_callType:I

    const-string v1, "#<init>"

    const-string v2, "EXTENSION: "

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public extensionEnd(Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;)V
    .locals 0

    return-void
.end method

.method public generated(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceGeneration:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_characters:[C

    iget v2, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_start:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_length:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDATA: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTITYREF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMMENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string p1, "IGNORABLEWHITESPACE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_characters:[C

    iget v2, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_start:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_length:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARACTERS: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENDELEMENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STARTELEMENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string p1, "ENDDOCUMENT"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string p1, "STARTDOCUMENT"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectEnd(Lcom/sun/org/apache/xalan/internal/trace/EndSelectionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public selected(Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_traceSelection:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_sourceNode:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Selected source node \'"

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', at "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result v1

    const-string v2, "\': "

    const-string v3, "=\'"

    const-string v4, ": "

    const-string v5, ", "

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRootRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v6

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string v6, "(default root rule) "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultTextRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v6

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string v6, "(default text rule) "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getDefaultRule()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    move-result-object v6

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string v6, "(default rule) "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_attributeName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Line #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Column #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_styleNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_attributeName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_selection:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_selection:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_selection:Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getCurrentPos()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    :try_start_0
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->cloneWithReset()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v3

    const/4 v5, -0x1

    if-ne v5, v3, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string p1, "     [empty node list]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_4
    if-eq v5, v3, :cond_7

    iget-object v6, p1, Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v6}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string v8, "     "

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-interface {v6, v3}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v3

    goto :goto_4

    :cond_7
    :goto_5
    invoke-interface {v0, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->runTo(I)V

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->setCurrentPos(I)V

    goto :goto_6

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    const-string p1, "     [Can\'t trace nodelist because it it threw a CloneNotSupportedException]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public trace(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/trace/PrintTraceListener;->_trace(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V

    return-void
.end method

.method public traceEnd(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
    .locals 0

    return-void
.end method
