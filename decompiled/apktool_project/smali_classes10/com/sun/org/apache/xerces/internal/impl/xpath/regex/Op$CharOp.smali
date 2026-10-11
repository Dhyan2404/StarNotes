.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$CharOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharOp"
.end annotation


# instance fields
.field charData:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$CharOp;->charData:I

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$CharOp;->charData:I

    return p0
.end method
