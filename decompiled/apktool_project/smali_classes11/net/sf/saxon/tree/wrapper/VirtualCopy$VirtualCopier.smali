.class public Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/wrapper/VirtualCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualCopier"
.end annotation


# instance fields
.field protected base:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public final e:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

.field protected node:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

.field protected testInclusion:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/wrapper/VirtualCopy;Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/VirtualCopy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->node:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->base:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p3, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->e:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iput-boolean p4, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->testInclusion:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->base:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->base:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->base:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->testInclusion:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->node:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->isIncludedInCopy(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->node:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->e:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iput-object v1, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->parent:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy$VirtualCopier;->node:Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    iput-object p0, v0, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->systemIdSupplier:Ljava/util/function/Supplier;

    :cond_1
    return-object v0
.end method
