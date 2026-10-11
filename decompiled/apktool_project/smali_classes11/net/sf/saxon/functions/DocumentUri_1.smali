.class public Lnet/sf/saxon/functions/DocumentUri_1;
.super Lnet/sf/saxon/functions/ScalarSystemFunction;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/ScalarSystemFunction;-><init>()V

    return-void
.end method

.method public static getDocumentURI(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AnyURIValue;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/om/DocumentPool;->getDocumentURI(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public evaluate(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1, p2}, Lnet/sf/saxon/functions/DocumentUri_1;->getDocumentURI(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AnyURIValue;

    move-result-object p0

    return-object p0
.end method
