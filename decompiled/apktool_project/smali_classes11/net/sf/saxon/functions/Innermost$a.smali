.class public Lnet/sf/saxon/functions/Innermost$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Innermost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/om/NodeInfo;

.field public g:I

.field public final synthetic h:Lnet/sf/saxon/functions/Innermost;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/Innermost;Lnet/sf/saxon/om/SequenceIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/functions/Innermost$a;->h:Lnet/sf/saxon/functions/Innermost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    iput-object p2, p0, Lnet/sf/saxon/functions/Innermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    iput-object p1, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Innermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Innermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/Innermost$a;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    return-object v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/functions/Innermost$a;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    .line 6
    iget v2, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    .line 7
    iput-object v1, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 8
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v2, v0}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iput-object v0, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    .line 10
    :cond_2
    iget v1, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/Innermost$a;->g:I

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    .line 12
    iput-object v0, p0, Lnet/sf/saxon/functions/Innermost$a;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v1
.end method
