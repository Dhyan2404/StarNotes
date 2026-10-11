.class public Lorg/apache/xerces/dom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field public final synthetic e:Lorg/apache/xerces/dom/ParentNode;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/ParentNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/b;->e:Lorg/apache/xerces/dom/ParentNode;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/b;->e:Lorg/apache/xerces/dom/ParentNode;

    invoke-static {p0}, Lorg/apache/xerces/dom/ParentNode;->access$000(Lorg/apache/xerces/dom/ParentNode;)I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/b;->e:Lorg/apache/xerces/dom/ParentNode;

    invoke-static {p0, p1}, Lorg/apache/xerces/dom/ParentNode;->access$100(Lorg/apache/xerces/dom/ParentNode;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
