.class public Lnet/sf/saxon/expr/parser/PathMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;,
        Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;,
        Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;,
        Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/expr/Binding;",
            "Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->setReturnable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;Lnet/sf/saxon/tree/util/IndexedStack;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;",
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/tree/util/IndexedStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->hasUnknownDependencies()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->setHasUnknownDependencies()V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {p2, v3}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/parser/PathMap;->a(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;Lnet/sf/saxon/tree/util/IndexedStack;)V

    invoke-virtual {p2}, Lnet/sf/saxon/tree/util/IndexedStack;->pop()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    :goto_1
    if-ltz p0, :cond_12

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {p2}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/tree/util/IndexedStack;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p2, v4}, Lnet/sf/saxon/tree/util/IndexedStack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    :goto_2
    const/4 v6, -0x1

    if-eqz v4, :cond_4

    iget-object v7, v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v9

    if-ne v9, v0, :cond_3

    invoke-virtual {v8}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v7

    const/4 v8, 0x5

    if-eqz v7, :cond_10

    if-eq v7, v2, :cond_e

    if-eq v7, v8, :cond_e

    const/4 v9, 0x6

    if-eq v7, v9, :cond_10

    const/4 v9, 0x7

    const/4 v10, 0x3

    if-eq v7, v9, :cond_c

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    :pswitch_1
    if-eq v6, v10, :cond_9

    if-eq v6, v5, :cond_9

    const/16 v5, 0x8

    if-ne v6, v5, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x4

    if-ne v6, v5, :cond_7

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v5

    iget-object v5, v5, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {v4, v8, v5, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    :goto_4
    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v4

    iget-object v4, v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v3

    invoke-virtual {p1, v8, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {p1, v8, v4, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    :goto_5
    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_9
    :goto_6
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->setReturnable(Z)V

    :cond_a
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    move v5, v1

    :goto_7
    iget-object v6, v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    iget-object v6, v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    iget-object v7, v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    :pswitch_2
    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v5

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {v4, v6, v5, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {p1, v10, v4, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    if-ne v4, v5, :cond_f

    iget-object v4, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    iget-object v3, v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    iget-object v5, p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const-string v4, "goto case Saxon.Hej.om.AxisInfo.ANCESTOR;"

    invoke-static {v4}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_10
    :pswitch_3
    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v4

    if-eq v4, v8, :cond_11

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {p1, v8, v4, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    iget-object v3, v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_11
    :goto_9
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_1

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;I)V
    .locals 5

    const-string v0, "                                           "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isAtomized()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    const-string v3, " @"

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " #"

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->hasUnknownDependencies()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, " ...??"

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v1

    add-int/lit8 v2, p3, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lnet/sf/saxon/expr/parser/PathMap;->b(Lnet/sf/saxon/lib/Logger;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getContextDocumentRoot()Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap;->getPathMapRoots()[Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/PathMap;->reduceToDownwardsAxes(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->getRootExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/expr/RootExpression;

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "More than one context document root found in path map"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getContextItemRoot()Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap;->getPathMapRoots()[Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->getRootExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "More than one context document root found in path map"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getPathForVariable(Lnet/sf/saxon/expr/Binding;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    return-object p0
.end method

.method public getPathMapRoots()[Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    return-object p0
.end method

.method public getRootForDocument(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 10

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/PathMap;->getPathMapRoots()[Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v6, v0, v4

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/parser/PathMap;->reduceToDownwardsAxes(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->getRootExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    const-class v8, Lnet/sf/saxon/functions/Doc;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    const-class v8, Lnet/sf/saxon/functions/DocumentFn;

    invoke-virtual {v7, v8}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    check-cast v7, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {v7, v3}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    instance-of v9, v7, Lnet/sf/saxon/expr/Literal;

    if-eqz v9, :cond_2

    :try_start_0
    check-cast v7, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/GroundedValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v8, :cond_1

    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_1
    invoke-static {v7, v8}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_2
    move-object v7, v2

    :goto_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than one document root found in path map for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v5
.end method

.method public makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->getRootExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public reduceToDownwardsAxes(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
    .locals 6

    iget-boolean v0, p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->isDownwardsOnly:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->getRootExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextItemExpression;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    new-instance v0, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object v0

    iget-object v2, p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getAxis()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4, v3}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    invoke-direct {v4}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;-><init>()V

    iget-object v5, v4, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    sget-object v5, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v3, v5, v4}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->createArc(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lnet/sf/saxon/expr/parser/PathMap;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object p1, v0

    :cond_5
    new-instance v0, Lnet/sf/saxon/tree/util/IndexedStack;

    invoke-direct {v0}, Lnet/sf/saxon/tree/util/IndexedStack;-><init>()V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/util/IndexedStack;->push(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/PathMap;->a(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;Lnet/sf/saxon/tree/util/IndexedStack;)V

    iput-boolean v1, p1, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->isDownwardsOnly:Z

    return-object p1
.end method

.method public registerPathForVariable(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
