.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ChildOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildOp"
.end annotation


# instance fields
.field child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getChild()Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ChildOp;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    return-object p0
.end method

.method public setChild(Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$ChildOp;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;

    return-void
.end method
