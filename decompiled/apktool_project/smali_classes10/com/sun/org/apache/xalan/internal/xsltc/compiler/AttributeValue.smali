.class abstract Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    return-void
.end method

.method public static final create(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValue;
    .locals 2

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;

    invoke-direct {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AttributeValueTemplate;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SimpleAttributeValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :goto_0
    return-object v0
.end method
