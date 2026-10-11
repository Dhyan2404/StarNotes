.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;


# instance fields
.field private _buffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;->_buffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public append(C)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public append([CII)Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/OutputBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public close()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/StringOutputBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
