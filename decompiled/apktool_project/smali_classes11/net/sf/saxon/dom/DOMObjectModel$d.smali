.class public Lnet/sf/saxon/dom/DOMObjectModel$d;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/dom/DOMObjectModel;->getJPConverter(Ljava/lang/Class;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lnet/sf/saxon/dom/DOMObjectModel;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/dom/DOMObjectModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMObjectModel$d;->d:Lnet/sf/saxon/dom/DOMObjectModel;

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 5

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    check-cast p1, Lorg/w3c/dom/NodeList;

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/dom/DOMObjectModel$d;->d:Lnet/sf/saxon/dom/DOMObjectModel;

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lnet/sf/saxon/dom/DOMObjectModel;->a(Lnet/sf/saxon/dom/DOMObjectModel;Lorg/w3c/dom/Node;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p0, v1}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0
.end method
