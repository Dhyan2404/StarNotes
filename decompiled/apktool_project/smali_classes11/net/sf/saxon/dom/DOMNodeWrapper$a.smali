.class public final Lnet/sf/saxon/dom/DOMNodeWrapper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/dom/DOMNodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public final g:Lnet/sf/saxon/dom/DOMNodeWrapper;

.field public h:Lnet/sf/saxon/dom/DOMNodeWrapper;

.field public final synthetic i:Lnet/sf/saxon/dom/DOMNodeWrapper;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/dom/DOMNodeWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;)V
    .locals 6

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->i:Lnet/sf/saxon/dom/DOMNodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->e:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    iget-object v0, p2, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v0, v0, Lnet/sf/saxon/dom/DocumentWrapper;->docNode:Lorg/w3c/dom/Node;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->g:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object p2, p2, Lnet/sf/saxon/dom/DOMNodeWrapper;->node:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p2, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->e:Ljava/util/ArrayList;

    invoke-interface {p2, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    iget-object p0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->e:Ljava/util/ArrayList;

    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    iget-object v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->i:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget-object v1, v1, Lnet/sf/saxon/dom/DOMNodeWrapper;->docWrapper:Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v2, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->g:Lnet/sf/saxon/dom/DOMNodeWrapper;

    iget v3, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    invoke-static {v0, v1, v2, v3}, Lnet/sf/saxon/dom/DOMNodeWrapper;->makeWrapper(Lorg/w3c/dom/Node;Lnet/sf/saxon/dom/DocumentWrapper;Lnet/sf/saxon/dom/DOMNodeWrapper;I)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->h:Lnet/sf/saxon/dom/DOMNodeWrapper;

    .line 4
    iget v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/dom/DOMNodeWrapper$a;->f:I

    return-object v0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
