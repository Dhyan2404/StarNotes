.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$RangeOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeOp"
.end annotation


# instance fields
.field tok:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$RangeOp;->tok:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method public getToken()Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RangeToken;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$RangeOp;->tok:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RangeToken;

    return-object p0
.end method
