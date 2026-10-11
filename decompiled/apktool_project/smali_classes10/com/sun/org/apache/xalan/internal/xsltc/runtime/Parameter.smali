.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _isDefault:Z

.field public _name:Ljava/lang/String;

.field public _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_isDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_name:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_value:Ljava/lang/Object;

    .line 8
    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Parameter;->_isDefault:Z

    return-void
.end method
