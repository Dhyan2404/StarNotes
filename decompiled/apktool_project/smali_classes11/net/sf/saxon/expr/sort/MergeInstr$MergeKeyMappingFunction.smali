.class public Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/sort/MergeInstr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeKeyMappingFunction"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

.field public final b:Lnet/sf/saxon/expr/XPathContext;

.field public final c:Lnet/sf/saxon/expr/XPathContext;

.field public final d:Lnet/sf/saxon/tree/iter/ManualIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->b:Lnet/sf/saxon/expr/XPathContext;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->a:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->c:Lnet/sf/saxon/expr/XPathContext;

    const/16 p2, 0xb0

    invoke-interface {p1, p2}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    new-instance p2, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {p2}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->d:Lnet/sf/saxon/tree/iter/ManualIterator;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lnet/sf/saxon/tree/iter/ManualIterator;->setPosition(I)V

    invoke-interface {p1, p2}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    return-void
.end method


# virtual methods
.method public map(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->d:Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;->setContextItem(Lnet/sf/saxon/om/Item;)V

    new-instance v0, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->a:Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    iget-object v2, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    iget-object v1, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeKeyMappingFunction;->c:Lnet/sf/saxon/expr/XPathContext;

    invoke-direct {v0, p1, v2, v1, p0}, Lnet/sf/saxon/expr/sort/ItemWithMergeKeys;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    new-instance p0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
