.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ConditionOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionOp"
.end annotation


# instance fields
.field condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

.field no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

.field refNumber:I

.field yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;


# direct methods
.method public constructor <init>(IILcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ConditionOp;->condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ConditionOp;->yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ConditionOp;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    return-void
.end method
