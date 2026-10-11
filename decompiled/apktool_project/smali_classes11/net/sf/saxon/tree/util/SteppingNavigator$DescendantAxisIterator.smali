.class public Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/SteppingNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescendantAxisIterator"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/util/SteppingNode;

.field public f:Lnet/sf/saxon/tree/util/SteppingNode;

.field public final g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/util/SteppingNode;ZLnet/sf/saxon/pattern/NodeTest;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->e:Lnet/sf/saxon/tree/util/SteppingNode;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->f:Lnet/sf/saxon/tree/util/SteppingNode;

    :cond_1
    if-eqz p3, :cond_c

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p2

    if-ne p3, p2, :cond_2

    goto/16 :goto_0

    :cond_2
    instance-of p2, p3, Lnet/sf/saxon/pattern/NameTest;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    move-object p2, p3

    check-cast p2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NameTest;->getPrimitiveType()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lnet/sf/saxon/tree/util/SteppingNavigator$c;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NameTest;->getFingerprint()I

    move-result p2

    invoke-direct {p3, p1, p2}, Lnet/sf/saxon/tree/util/SteppingNavigator$c;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;I)V

    iput-object p3, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto/16 :goto_1

    :cond_3
    new-instance p3, Lnet/sf/saxon/tree/util/SteppingNavigator$a;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NameTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NameTest;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lnet/sf/saxon/tree/util/SteppingNavigator$a;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto/16 :goto_1

    :cond_4
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$b;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/tree/util/SteppingNavigator$b;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto/16 :goto_1

    :cond_5
    instance-of p2, p3, Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move-object p2, p3

    check-cast p2, Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NodeKindTest;->getPrimitiveType()I

    move-result p2

    if-ne p2, v0, :cond_6

    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$a;

    invoke-direct {p2, p1, v1, v1}, Lnet/sf/saxon/tree/util/SteppingNavigator$a;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_6
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$b;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/tree/util/SteppingNavigator$b;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_7
    instance-of p2, p3, Lnet/sf/saxon/pattern/LocalNameTest;

    if-eqz p2, :cond_9

    move-object p2, p3

    check-cast p2, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/LocalNameTest;->getPrimitiveType()I

    move-result v2

    if-ne v2, v0, :cond_8

    new-instance p3, Lnet/sf/saxon/tree/util/SteppingNavigator$a;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/LocalNameTest;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v1, p2}, Lnet/sf/saxon/tree/util/SteppingNavigator$a;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_8
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$b;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/tree/util/SteppingNavigator$b;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_9
    instance-of p2, p3, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz p2, :cond_b

    move-object p2, p3

    check-cast p2, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NamespaceTest;->getPrimitiveType()I

    move-result v2

    if-ne v2, v0, :cond_a

    new-instance p3, Lnet/sf/saxon/tree/util/SteppingNavigator$a;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/NamespaceTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2, v1}, Lnet/sf/saxon/tree/util/SteppingNavigator$a;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_a
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$b;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/tree/util/SteppingNavigator$b;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_b
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$b;

    invoke-direct {p2, p1, p3}, Lnet/sf/saxon/tree/util/SteppingNavigator$b;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    goto :goto_1

    :cond_c
    :goto_0
    new-instance p2, Lnet/sf/saxon/tree/util/SteppingNavigator$d;

    invoke-direct {p2, p1}, Lnet/sf/saxon/tree/util/SteppingNavigator$d;-><init>(Lnet/sf/saxon/tree/util/SteppingNode;)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->next()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->next()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->f:Lnet/sf/saxon/tree/util/SteppingNode;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->e:Lnet/sf/saxon/tree/util/SteppingNode;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->f:Lnet/sf/saxon/tree/util/SteppingNode;

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->g:Lnet/sf/saxon/tree/util/SteppingNavigator$e;

    invoke-interface {v1, v0}, Lnet/sf/saxon/tree/util/SteppingNavigator$e;->a(Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;->f:Lnet/sf/saxon/tree/util/SteppingNode;

    return-object v0
.end method
