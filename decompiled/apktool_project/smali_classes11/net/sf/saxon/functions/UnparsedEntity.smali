.class public abstract Lnet/sf/saxon/functions/UnparsedEntity;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityPublicId;,
        Lnet/sf/saxon/functions/UnparsedEntity$UnparsedEntityUri;
    }
.end annotation


# static fields
.field public static PUBLIC_ID:I = 0x1

.field public static URI:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/UnparsedEntity;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/UnparsedEntity;->getOp()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    const-string v3, "In function "

    const-string v4, "XTDE1370"

    const-string v5, "XTDE1380"

    const/16 v6, 0x9

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p2

    .line 6
    instance-of v2, p2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_0

    .line 7
    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 9
    :cond_1
    sget p2, Lnet/sf/saxon/functions/UnparsedEntity;->URI:I

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 10
    :goto_1
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", the context item must be a node in a tree whose root is a document node"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v4, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p2

    .line 11
    :cond_3
    aget-object p2, p2, v7

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_9

    .line 13
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    if-eq v2, v6, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_6

    move-object p0, p1

    goto :goto_2

    .line 15
    :cond_6
    aget-object p0, p0, v0

    :goto_2
    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, p0

    .line 16
    :goto_3
    sget p0, Lnet/sf/saxon/functions/UnparsedEntity;->URI:I

    if-ne v0, p0, :cond_8

    new-instance p0, Lnet/sf/saxon/value/AnyURIValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    :goto_4
    return-object p0

    .line 17
    :cond_9
    :goto_5
    sget p2, Lnet/sf/saxon/functions/UnparsedEntity;->URI:I

    if-ne v0, p2, :cond_a

    goto :goto_6

    :cond_a
    move-object v4, v5

    .line 18
    :goto_6
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", the second argument must be a document node"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, v4, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p2
.end method

.method public abstract getOp()I
.end method
