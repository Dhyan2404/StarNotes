.class Lcom/sun/org/apache/xerces/internal/dom/ParentNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$1;->this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$1;->this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->access$000(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;)I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$1;->this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    invoke-static {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->access$100(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
