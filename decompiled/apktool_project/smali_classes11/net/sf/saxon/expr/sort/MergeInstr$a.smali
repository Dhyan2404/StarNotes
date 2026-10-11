.class public Lnet/sf/saxon/expr/sort/MergeInstr$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LastPositionFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/sort/MergeInstr;->o(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/LastPositionFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lnet/sf/saxon/expr/XPathContext;

.field public final synthetic g:Lnet/sf/saxon/expr/sort/MergeInstr;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->g:Lnet/sf/saxon/expr/sort/MergeInstr;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->e:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 6

    :try_start_0
    iget v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->e:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->g:Lnet/sf/saxon/expr/sort/MergeInstr;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/sort/MergeInstr;->i(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;)[Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->g:Lnet/sf/saxon/expr/sort/MergeInstr;

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-static {v1, v3, v0, v2}, Lnet/sf/saxon/expr/sort/MergeInstr;->j(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContextMajor;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->g:Lnet/sf/saxon/expr/sort/MergeInstr;

    iget-object v4, v3, Lnet/sf/saxon/expr/sort/MergeInstr;->mergeSources:[Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v3, v4, v0}, Lnet/sf/saxon/expr/sort/MergeInstr;->getComparer(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;[Lnet/sf/saxon/expr/sort/AtomicComparer;)Ljava/util/Comparator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lnet/sf/saxon/expr/sort/MergeGroupingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;Lnet/sf/saxon/expr/LastPositionFinder;)V

    invoke-static {v2}, Lnet/sf/saxon/functions/Count;->steppingCount(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$a;->e:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
