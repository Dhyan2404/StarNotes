.class public Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public f:Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

.field public g:Lnet/sf/saxon/om/NodeInfo;

.field public h:Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

.field public i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->h:Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    iput-object p3, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->f:Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->i:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->f:Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lnet/sf/saxon/tree/wrapper/AbstractVirtualNode;->node:Lnet/sf/saxon/om/NodeInfo;

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->h:Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->isPreservedNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->f(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->h:Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;

    iget-object v2, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->f:Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/SpaceStrippedDocument;Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;)Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->g:Lnet/sf/saxon/om/NodeInfo;

    .line 5
    iget v1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/wrapper/SpaceStrippedNode$a;->i:I

    return-object v0
.end method
