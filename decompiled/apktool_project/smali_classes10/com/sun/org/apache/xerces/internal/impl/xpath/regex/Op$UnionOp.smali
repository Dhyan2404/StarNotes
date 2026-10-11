.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$UnionOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionOp"
.end annotation


# instance fields
.field branches:Ljava/util/Vector;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addElement(Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public elementAt(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method
