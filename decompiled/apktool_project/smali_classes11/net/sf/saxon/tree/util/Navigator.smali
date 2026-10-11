.class public final Lnet/sf/saxon/tree/util/Navigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;,
        Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;,
        Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;,
        Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;,
        Lnet/sf/saxon/tree/util/Navigator$EmptyTextFilter;,
        Lnet/sf/saxon/tree/util/Navigator$AxisFilter;,
        Lnet/sf/saxon/tree/util/Navigator$ChildrenAsIterable;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final synthetic b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/tree/util/Navigator;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x3
        0x2
        0x3
        -0x1
        -0x1
        -0x1
        0x3
        0x3
        0x0
        -0x1
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->c(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static alphaKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const-string p0, "a"

    return-object p0

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x64

    if-ge p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x186a0

    if-ge p0, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const v0, 0xf4240

    if-ge p0, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const v0, 0x989680

    if-ge p0, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const v0, 0x5f5e100

    if-ge p0, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const v0, 0x3b9aca00

    if-ge p0, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static appendSequentialKey(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Ljava/lang/StringBuilder;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 p2, 0x77

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/TreeInfo;->getDocumentNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lnet/sf/saxon/tree/util/Navigator;->appendSequentialKey(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Ljava/lang/StringBuilder;Z)V

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const/16 p2, 0x41

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/tree/util/Navigator;->alphaKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/NodeTest;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/UType;->ANY_NODE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static compareOrder(Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;)I
    .locals 6

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    return v4

    :cond_2
    invoke-interface {v0, v3}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lnet/sf/saxon/tree/util/Navigator;->a:[I

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    aget v1, v0, v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    aget v0, v0, v2

    if-ne v1, v0, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p0

    invoke-interface {p1}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_3
    sub-int/2addr v1, v0

    return v1

    :cond_4
    move-object v0, p0

    move v3, v1

    :goto_1
    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p0

    :goto_3
    if-le v3, v1, :cond_8

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return v4

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-le v1, v3, :cond_a

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    return v2

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz p0, :cond_e

    if-eqz v1, :cond_e

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    if-eq p0, v1, :cond_b

    return v2

    :cond_b
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    if-eq p0, v1, :cond_c

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    if-ne p0, v1, :cond_c

    return v4

    :cond_c
    check-cast v0, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    invoke-interface {v0}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p0

    check-cast p1, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    invoke-interface {p1}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p1

    goto :goto_0

    :cond_d
    move-object v0, p0

    move-object p1, v1

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Node order comparison - internal error"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static comparePosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)I
    .locals 8

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_c

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-eq v0, v1, :cond_c

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    if-eq v0, v2, :cond_c

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    const/4 v3, 0x4

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-interface {v0, v2}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xa

    const/4 v4, 0x6

    if-eqz v0, :cond_4

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    if-gez p0, :cond_3

    return v2

    :cond_3
    return v4

    :cond_4
    move-object v0, p0

    move v5, v1

    :goto_0
    if-eqz v0, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    move v6, v1

    :goto_1
    if-eqz v0, :cond_6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, p0

    :goto_2
    if-le v5, v6, :cond_8

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    return v3

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_8
    move-object v0, p1

    :goto_3
    if-le v6, v5, :cond_a

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_a
    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->compareOrder(Lnet/sf/saxon/om/NodeInfo;)I

    move-result p0

    if-gez p0, :cond_b

    return v2

    :cond_b
    return v4

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/s9api/Location;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 22
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    if-eq v3, v1, :cond_a

    const/4 v1, 0x2

    if-eq v3, v1, :cond_8

    const/4 v0, 0x3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x7

    if-eq v3, v0, :cond_5

    const/16 v0, 0x8

    if-eq v3, v0, :cond_4

    const/16 v0, 0x9

    if-eq v3, v0, :cond_2

    const/16 p2, 0xd

    if-eq v3, p2, :cond_1

    goto :goto_2

    .line 23
    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v2}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 24
    :cond_2
    invoke-static {p2}, Lnet/sf/saxon/om/CopyOptions;->getStartDocumentProperties(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    .line 25
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 26
    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/tree/util/Navigator;->copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    :goto_2
    return-void

    .line 28
    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0, p3, v2}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 29
    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p3, v2}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 30
    :cond_6
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-eqz p2, :cond_7

    .line 32
    invoke-virtual {p1, p0, p3, v2}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_7
    return-void

    :cond_8
    if-eqz v0, :cond_9

    .line 33
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/SimpleType;

    goto :goto_3

    :cond_9
    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    :goto_3
    move-object v2, p2

    .line 34
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_a
    if-eqz v0, :cond_b

    .line 35
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    .line 36
    :goto_4
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    const/16 v4, 0xc0

    invoke-virtual {p1, v3, v1, p3, v4}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_c

    .line 37
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    .line 38
    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3, v2}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 39
    :cond_c
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v3

    goto :goto_7

    :cond_d
    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    :goto_7
    move-object v6, v3

    .line 41
    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_6

    .line 42
    :cond_e
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 43
    invoke-static {v0, p1, p2, p3}, Lnet/sf/saxon/tree/util/Navigator;->copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_8

    .line 44
    :cond_f
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public static copy(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 p0, 0xd

    if-eq v0, p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot copy namespace to Receiver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p2}, Lnet/sf/saxon/om/CopyOptions;->getStartDocumentProperties(I)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    .line 4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    :goto_1
    return-void

    .line 7
    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0, p3, v2}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 8
    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p2, p0, p3, v2}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    .line 9
    :cond_5
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-eqz p2, :cond_6

    .line 11
    invoke-interface {p1, p0, p3, v2}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_6
    return-void

    .line 12
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot copy attribute to Receiver"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_9

    .line 13
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    goto :goto_2

    .line 14
    :cond_9
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v0

    :goto_2
    move-object v5, v0

    .line 15
    invoke-static {p2, v2}, Lnet/sf/saxon/om/CopyOptions;->includes(II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    :goto_3
    move-object v7, v0

    .line 16
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    .line 17
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v6

    const v9, 0x20040

    move-object v3, p1

    move-object v8, p3

    .line 18
    invoke-interface/range {v3 .. v9}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    .line 19
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_4

    .line 21
    :cond_b
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    return-void
.end method

.method public static filteredSingleton(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lnet/sf/saxon/pattern/NodePredicate;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getAbsolutePath(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AbsolutePath;
    .locals 7

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->isStreamedNode(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    new-instance v3, Lnet/sf/saxon/om/AbsolutePath$PathElement;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v4

    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    if-eqz v0, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result v6

    :goto_1
    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/om/AbsolutePath$PathElement;-><init>(ILnet/sf/saxon/om/NodeName;I)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/om/AbsolutePath;

    invoke-direct {p0, v1}, Lnet/sf/saxon/om/AbsolutePath;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/om/AbsolutePath;->setSystemId(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAttributeValue(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseURI(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/jtj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jtj;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/tree/util/Navigator;->getBaseURI(Lnet/sf/saxon/om/NodeInfo;Ljava/util/function/Predicate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBaseURI(Lnet/sf/saxon/om/NodeInfo;Ljava/util/function/Predicate;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    const/16 v1, 0x181

    .line 3
    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyElementImpl;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "base"

    .line 4
    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 8
    new-instance p1, Ljava/net/URI;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 10
    :goto_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v1

    .line 12
    :cond_4
    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 13
    instance-of v5, p0, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    if-eqz v5, :cond_5

    .line 14
    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTree()Lnet/sf/saxon/tree/tiny/TinyTree;

    move-result-object v1

    move-object v5, p0

    check-cast v5, Lnet/sf/saxon/tree/tiny/TinyElementImpl;

    invoke-virtual {v5}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getNodeNumber()I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->isTopWithinEntity(I)Z

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 16
    :goto_2
    new-instance v1, Ljava/net/URI;

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-direct {v1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_4
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0

    .line 19
    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return-object v1

    .line 20
    :cond_9
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_a

    return-object p1

    .line 21
    :cond_a
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    return-object p1

    .line 23
    :cond_c
    :goto_5
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInheritedAttributeValue(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNodeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumberAny(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p5, :cond_0

    if-nez p3, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v2

    :goto_0
    const-string v3, "xsl:number"

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/Controller;->getUserData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    aget-object v5, v4, v2

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v4, v2

    :goto_1
    if-nez p2, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-direct {p2, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lnet/sf/saxon/pattern/NodeTestPattern;

    new-instance v2, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v2, p1}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p2, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1, p4}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    move v2, v1

    :cond_4
    if-nez p3, :cond_5

    invoke-static {p2}, Lnet/sf/saxon/tree/util/Navigator;->b(Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    if-ne v6, v7, :cond_6

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v6

    if-ne v6, v7, :cond_6

    sget-object v6, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_3

    :cond_6
    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v6

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {p3, p1, p4}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v7

    if-eqz v7, :cond_7

    return v2

    :cond_7
    const/16 v7, 0xd

    invoke-interface {p1, v7, v6}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/NodeInfo;

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p2, v7, p4}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-ne v2, v1, :cond_a

    invoke-interface {v7, v5}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :cond_b
    if-eqz p3, :cond_8

    invoke-virtual {p3, v7, p4}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    if-eqz p5, :cond_c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0, v3, p1}, Lnet/sf/saxon/Controller;->setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    return v2
.end method

.method public static getNumberMulti(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Lnet/sf/saxon/pattern/Pattern;",
            "Lnet/sf/saxon/pattern/Pattern;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    new-instance v1, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v1, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p0, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p3}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSingle(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p0, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_1
    return-object v0
.end method

.method public static getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v0, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    :goto_1
    const/16 v1, 0xb

    invoke-interface {p0, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0, v1}, Lnet/sf/saxon/Controller;->setRememberedNumber(Lnet/sf/saxon/om/NodeInfo;I)V

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lnet/sf/saxon/Controller;->getRememberedNumber(Lnet/sf/saxon/om/NodeInfo;)I

    move-result v2

    if-lez v2, :cond_4

    add-int/2addr v2, v1

    invoke-virtual {p1, p0, v2}, Lnet/sf/saxon/Controller;->setRememberedNumber(Lnet/sf/saxon/om/NodeInfo;I)V

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getNumberSingle(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {p0, p3}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/pattern/NodeKindTest;->makeNodeKindTest(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-direct {p1, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    new-instance v2, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v2, p0}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-direct {p1, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_8

    :cond_3
    invoke-virtual {p1, p0, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :cond_5
    invoke-virtual {p2, v2, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2, p0, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_8
    :goto_2
    const/16 p2, 0xb

    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->b(Lnet/sf/saxon/pattern/Pattern;)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    invoke-interface {p0, p2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    instance-of p2, p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    :cond_9
    :goto_3
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    if-nez v1, :cond_a

    return v0

    :cond_a
    if-nez p2, :cond_b

    invoke-virtual {p1, v1, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getOutermostElement(Lnet/sf/saxon/om/TreeInfo;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p0, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/Configuration;->isStreamedNode(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    .line 3
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    .line 4
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "]"

    const-string v6, "["

    const-string v7, "/"

    if-eq v3, v4, :cond_e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    const/4 v4, 0x7

    if-eq v3, v4, :cond_7

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v1, 0x9

    if-eq v3, v1, :cond_3

    const/16 v1, 0xd

    if-eq v3, v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "*[not(local-name()]"

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/namespace::"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v7

    .line 8
    :cond_4
    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v0

    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/comment()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_7
    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v0

    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/processing-instruction()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_a
    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v2, v0

    :cond_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/text()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    if-nez v2, :cond_f

    .line 18
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_f
    invoke-static {v2, p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_10

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_11

    goto :goto_3

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;

    invoke-interface {p0}, Lnet/sf/saxon/tree/wrapper/SiblingCountingNode;->getSiblingPosition()I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0xb

    invoke-interface {p0, v0, p1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_1

    :cond_2
    return p1
.end method

.method public static haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 4

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 4

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    check-cast p1, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->isAncestorOrSelf(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    if-eqz v0, :cond_4

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    if-eqz p1, :cond_9

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    goto :goto_1

    :cond_9
    return v2
.end method

.method public static nodeTestFromPredicate(Lnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/pattern/NodeTest;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/pattern/NodeTest;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sunia/HTREnginev2/itj;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/itj;-><init>(Lnet/sf/saxon/pattern/NodePredicate;)V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object p0

    return-object p0
.end method
