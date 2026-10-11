.class public Lnet/sf/saxon/style/XSLSort;
.super Lnet/sf/saxon/style/XSLSortOrMergeKey;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSortOrMergeKey;-><init>()V

    return-void
.end method


# virtual methods
.method public getStable()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLSortOrMergeKey;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    const-string p1, "stable"

    iget-object v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->sortKeyDefinition:Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setStable(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method
