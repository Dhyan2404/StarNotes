.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private final _rest:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_rest:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_rest:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_arg:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->_rest:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ArgumentList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
