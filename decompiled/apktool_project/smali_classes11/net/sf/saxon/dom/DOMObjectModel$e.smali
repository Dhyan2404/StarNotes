.class public Lnet/sf/saxon/dom/DOMObjectModel$e;
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

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMObjectModel$e;->d:Lnet/sf/saxon/dom/DOMObjectModel;

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMObjectModel$e;->d:Lnet/sf/saxon/dom/DOMObjectModel;

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/dom/DOMObjectModel;->unravel(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0
.end method
