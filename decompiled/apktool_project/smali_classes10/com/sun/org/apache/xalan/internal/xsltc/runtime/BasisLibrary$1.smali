.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->node2Iterator(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$inNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary$1;->val$inNode:Lorg/w3c/dom/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary$1;->val$inNode:Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
