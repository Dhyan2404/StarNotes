.class public final Lcom/sunia/HTREnginev2/yg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/linked/ElementImpl;

.field public final f:Lnet/sf/saxon/pattern/NodeTest;

.field public g:Lnet/sf/saxon/om/NodeInfo;

.field public h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/linked/ElementImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yg;->e:Lnet/sf/saxon/tree/linked/ElementImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yg;->f:Lnet/sf/saxon/pattern/NodeTest;

    const/4 p2, 0x0

    iput p2, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/AttributeMap;->size()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/yg;->i:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yg;->f()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    iget v1, p0, Lcom/sunia/HTREnginev2/yg;->i:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yg;->g:Lnet/sf/saxon/om/NodeInfo;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yg;->e:Lnet/sf/saxon/tree/linked/ElementImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/AttributeMap;->itemAt(I)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/om/AttributeInfo$Deleted;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/sf/saxon/tree/linked/AttributeImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yg;->e:Lnet/sf/saxon/tree/linked/ElementImpl;

    iget v2, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/tree/linked/AttributeImpl;-><init>(Lnet/sf/saxon/tree/linked/ElementImpl;I)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/yg;->g:Lnet/sf/saxon/om/NodeInfo;

    iget v1, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/yg;->h:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yg;->f:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yg;->g:Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_0

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
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yg;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/yg;->g:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/yg;->f()V

    return-object v0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
