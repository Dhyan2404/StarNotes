.class public Lnet/sf/saxon/style/XSLMergeKey;
.super Lnet/sf/saxon/style/XSLSortOrMergeKey;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSortOrMergeKey;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE3200"

    return-object p0
.end method

.method public getReturnedItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/style/XSLSortOrMergeKey;->prepareAttributes()V

    iget-object v0, p0, Lnet/sf/saxon/style/XSLSortOrMergeKey;->stable:Lnet/sf/saxon/expr/Expression;

    if-eqz v0, :cond_0

    const-string v0, "The @stable attribute is not allowed in xsl:merge-key"

    const-string v1, "XTSE0090"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
