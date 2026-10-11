.class public Lnet/sf/saxon/tree/tiny/TinyBuilder;
.super Lnet/sf/saxon/event/Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;
    }
.end annotation


# static fields
.field public static final s:I = 0xa

.field public static final synthetic t:Z


# instance fields
.field public f:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public final g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Lnet/sf/saxon/tree/tiny/Statistics;

.field public m:Z

.field public n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

.field public o:Lnet/sf/saxon/str/UnicodeBuilder;

.field public p:[I

.field public q:[I

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 4

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/Builder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->m:Z

    sget-object v2, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    new-instance v2, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v2, 0x64

    new-array v3, v2, [I

    iput-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v2

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TreeStatistics;->TEMPORARY_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->l:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isExpandAttributeDefaults()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnet/sf/saxon/lib/Feature;->MARK_DEFAULTED_ATTRIBUTES:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p4, p0, Lnet/sf/saxon/event/Builder;->namePool:Lnet/sf/saxon/om/NamePool;

    invoke-interface {p1, p4}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, p4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/PrefixPool;->obtainPrefixCode(Ljava/lang/String;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x14

    or-int/2addr p1, p4

    move v3, p1

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/tree/tiny/TinyTree;->a(Lnet/sf/saxon/om/NodeInfo;IILnet/sf/saxon/type/SimpleType;Ljava/lang/String;I)V

    iget-boolean p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->m:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-static {p5, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p2, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->markDefaultedAttribute(I)V

    :cond_1
    const/16 p1, 0x181

    if-ne p4, p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->w(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/str/CompressedWhitespace;

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    invoke-static {p3, v0}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    check-cast p1, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-virtual {p1}, Lnet/sf/saxon/str/CompressedWhitespace;->getCompressedValue()J

    move-result-wide v0

    const/4 p1, 0x4

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    long-to-int v4, v0

    const/4 v5, -0x1

    move-object v0, p3

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v2, v0, v1

    if-lez v2, :cond_0

    iget-object v3, p3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput p1, v3, v2

    :cond_0
    iget-object v2, p3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    aput v3, v2, p1

    aput p1, v0, v1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-boolean p0, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p3, p1, p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->u(III)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->makeTextNode(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-boolean p3, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p3, p1, v0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->u(III)V

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    sget-object p2, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->PRIMED:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    if-ne p1, p2, :cond_4

    sget-object p1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->ELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    goto :goto_0

    :cond_4
    sget-object p1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    :cond_5
    return-void
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    if-eqz v6, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    iput-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {v0}, Lnet/sf/saxon/str/LargeTextBuffer;->close()V

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->l:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v6, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->f(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v0

    long-to-int v3, v0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x8

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v4

    const/4 v5, -0x1

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v2, v0, v1

    if-lez v2, :cond_0

    iget-object v3, p3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput p1, v3, v2

    :cond_0
    iget-object v2, p3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    aput v3, v2, p1

    aput p1, v0, v1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-boolean p0, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p3, p1, p0, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->u(III)V

    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->k:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-le v0, v2, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    return-void
.end method

.method public endElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    sget-object v1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->ELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    const/4 v5, -0x1

    aput v5, v1, v4

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aput v2, v1, v4

    sub-int/2addr v4, v3

    iput v4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/tree/tiny/TinyTree;->indexIDElement(Lnet/sf/saxon/om/NodeInfo;I)V

    iput-boolean v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    aget-byte v4, v1, v2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v1, v4

    if-ne v4, v3, :cond_2

    iget-object v4, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    add-int/lit8 v6, v2, -0x1

    aget v6, v4, v6

    if-ne v6, v5, :cond_2

    iget-boolean v5, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x11

    aput-byte v6, v1, v5

    add-int/lit8 v1, v2, -0x1

    aget v5, v4, v2

    aput v5, v4, v1

    iget-object v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    add-int/lit8 v4, v2, -0x1

    aget v5, v1, v2

    aput v5, v1, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    sub-int/2addr v1, v3

    iput v1, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    :cond_2
    :goto_1
    return-void
.end method

.method public getAttValue(Lnet/sf/saxon/om/AttributeInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBuilderMonitor()Lnet/sf/saxon/event/BuilderMonitor;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyBuilderMonitor;-><init>(Lnet/sf/saxon/tree/tiny/TinyBuilder;)V

    return-object v0
.end method

.method public getCurrentDepth()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    return p0
.end method

.method public getLastCompletedElement()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-ltz v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    aget p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0
.end method

.method public getTree()Lnet/sf/saxon/tree/tiny/TinyTree;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    return-object p0
.end method

.method public makeTextNode(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 7

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->j:Lnet/sf/saxon/str/LargeTextBuffer;

    invoke-virtual {v0}, Lnet/sf/saxon/str/LargeTextBuffer;->length()I

    move-result v3

    invoke-virtual {v6, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->e(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {v0}, Lnet/sf/saxon/str/LargeTextBuffer;->length()I

    move-result p1

    sub-int v4, p1, v3

    iget p1, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->l:I

    add-int/lit8 p1, p1, -0x1

    iget-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, p1

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-ne v0, v1, :cond_0

    iget-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->p:[I

    aget v1, v0, p1

    add-int/2addr v1, v4

    aput v1, v0, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    const/4 v5, -0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v2, v0, v1

    if-lez v2, :cond_1

    iget-object v3, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput p1, v3, v2

    :cond_1
    iget-object v2, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    aput v3, v2, p1

    aput p1, v0, v1

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aget v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v1

    :goto_0
    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    return p0
.end method

.method public open()V
    .locals 3

    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    if-nez v0, :cond_2

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->l:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/tree/tiny/TinyTree;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/tree/tiny/Statistics;)V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iget-boolean v1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->setLineNumbering()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->w(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lnet/sf/saxon/event/Builder;->useEventLocation:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    const-class v1, Lnet/sf/saxon/event/CopyInformee;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->getComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/event/LocationCopier;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/event/LocationCopier;

    invoke-virtual {v0}, Lnet/sf/saxon/event/LocationCopier;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->length()J

    move-result-wide v0

    long-to-int v3, v0

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->o:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0, p2}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object v0, p0, Lnet/sf/saxon/event/Builder;->namePool:Lnet/sf/saxon/om/NamePool;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/om/NamePool;->allocateFingerprint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x7

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v4

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v1, p2, v0

    if-lez v1, :cond_0

    iget-object v2, p4, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput p1, v2, v1

    :cond_0
    iget-object v1, p4, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, p2, v2

    aput v2, v1, p1

    aput p1, p2, v0

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aget p2, p1, v0

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, v0

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-virtual {p4, p2, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->v(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->w(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-interface {p3}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p2

    invoke-virtual {p4, p0, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->u(III)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/event/Builder;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    iget-object v0, p0, Lnet/sf/saxon/event/Builder;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->TEMPORARY_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->l:Lnet/sf/saxon/tree/tiny/Statistics;

    return-void
.end method

.method public setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->l:Lnet/sf/saxon/tree/tiny/Statistics;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/tree/tiny/TinyTree;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean p1, p0, Lnet/sf/saxon/event/Builder;->started:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    if-eqz p1, :cond_1

    :cond_0
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-lez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/event/Builder;->started:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->j:Z

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    new-instance v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-direct {v2, v1}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;-><init>(Lnet/sf/saxon/tree/tiny/TinyTree;)V

    iput-object v2, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->setBaseURI(Ljava/lang/String;)V

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iget-object v2, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    check-cast v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/tree/tiny/TinyTree;->b(Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;)I

    move-result v2

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    aput v2, v3, v0

    const/4 v4, -0x1

    aput v4, v3, p1

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aput v0, v3, v0

    aput v0, v3, p1

    iget-object v0, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput v4, v0, v2

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v6, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {v0, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {v0, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget p4, p4, v2

    const/16 v0, 0xa

    if-le p4, v0, :cond_3

    const/16 v1, 0xc

    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    add-int/lit8 v0, v2, -0x1

    aget v3, p4, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p4

    iput p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aget v2, v0, v1

    if-lez v2, :cond_2

    iget-object v3, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aput p4, v3, v2

    :cond_2
    iget-object v2, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    aput v3, v2, p4

    aput p4, v0, v1

    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aput v8, p4, v1

    :cond_3
    iget-object p4, p0, Lnet/sf/saxon/event/Builder;->namePool:Lnet/sf/saxon/om/NamePool;

    invoke-interface {p1, p4}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p4

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->A0:Lnet/sf/saxon/om/PrefixPool;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/PrefixPool;->obtainPrefixCode(Ljava/lang/String;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x14

    or-int v5, p1, p4

    const/4 v1, 0x1

    iget v2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyTree;->d(SIIII)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    const/16 p1, 0x800

    invoke-static {p6, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p1

    const/16 p4, 0x276

    if-eq p1, p4, :cond_5

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-virtual {v6, p1, p2}, Lnet/sf/saxon/tree/tiny/TinyTree;->t(ILnet/sf/saxon/type/SchemaType;)V

    const/16 p1, 0x10

    invoke-static {p6, p1}, Lnet/sf/saxon/event/ReceiverOption;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-virtual {v6, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->setNilled(I)V

    :cond_4
    iget-boolean p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    if-nez p1, :cond_5

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->isIdType()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v7, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->r:Z

    :cond_5
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    const/4 p2, -0x1

    if-nez p1, :cond_6

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    aput p4, p1, v8

    aput p2, p1, v7

    invoke-virtual {v6, p4}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/event/Builder;->currentRoot:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    aget p6, p4, p1

    if-lez p6, :cond_7

    iget-object v0, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    aput v1, v0, p6

    :cond_7
    iget-object p6, v6, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v0, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    add-int/lit8 v1, p1, -0x1

    aget v1, p4, v1

    aput v1, p6, v0

    aput v0, p4, p1

    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aget p6, p4, p1

    add-int/2addr p6, v7

    aput p6, p4, p1

    :goto_2
    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    add-int/2addr p1, v7

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    iget-object p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    array-length p6, p4

    if-ne p1, p6, :cond_8

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    iget p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    mul-int/lit8 p4, p4, 0x2

    invoke-static {p1, p4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    :cond_8
    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->p:[I

    iget p4, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    aput p2, p1, p4

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->q:[I

    aput v8, p1, p4

    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->isUseEventLocation()Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-virtual {v6, p2, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->v(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-ne p2, v7, :cond_a

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object p4, p0, Lnet/sf/saxon/event/Builder;->systemId:Ljava/lang/String;

    invoke-virtual {v6, p2, p4}, Lnet/sf/saxon/tree/tiny/TinyTree;->v(ILjava/lang/String;)V

    :cond_a
    :goto_3
    iget-boolean p2, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    iget-object p2, p0, Lnet/sf/saxon/event/Builder;->baseURI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iput-boolean v8, p0, Lnet/sf/saxon/event/Builder;->uniformBaseURI:Z

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->w(Ljava/lang/String;)V

    :cond_b
    iget-boolean p1, p0, Lnet/sf/saxon/event/Builder;->lineNumbering:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p2

    invoke-interface {p5}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p4

    invoke-virtual {v6, p1, p2, p4}, Lnet/sf/saxon/tree/tiny/TinyTree;->u(III)V

    :cond_c
    instance-of p1, p5, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    if-eqz p1, :cond_d

    move-object p1, p5

    check-cast p1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;

    iget p1, p1, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    if-nez p1, :cond_d

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->h:I

    if-lt p1, v7, :cond_d

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    invoke-virtual {v6, p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->markTopWithinEntity(I)V

    :cond_d
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getAttValue(Lnet/sf/saxon/om/AttributeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p0

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->a(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :cond_e
    iget-boolean p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->k:Z

    if-eqz p1, :cond_f

    sget-object p1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->PRIMED:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    goto :goto_5

    :cond_f
    sget-object p1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    :goto_5
    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->n:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    iget-object p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->f:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p2, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    iget-object p3, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->g:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/tree/tiny/TinyTree;->c(ILnet/sf/saxon/om/NamespaceMap;)V

    iget p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    add-int/2addr p1, v7

    iput p1, p0, Lnet/sf/saxon/tree/tiny/TinyBuilder;->i:I

    return-void
.end method
