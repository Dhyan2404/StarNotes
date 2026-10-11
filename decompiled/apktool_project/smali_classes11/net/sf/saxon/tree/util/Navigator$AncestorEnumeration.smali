.class public final Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AncestorEnumeration"
.end annotation


# instance fields
.field public final e:Z

.field public f:Z

.field public g:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->e:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->f:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->f:Z

    .line 4
    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->e:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0
.end method
