.class public final Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;
.super Lorg/apache/xerces/impl/xs/models/XSCMLeaf;
.source "SourceFile"


# instance fields
.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p5, p6}, Lorg/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    iput p3, p0, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->j:I

    iput p4, p0, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->k:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->k:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->j:I

    return p0
.end method
