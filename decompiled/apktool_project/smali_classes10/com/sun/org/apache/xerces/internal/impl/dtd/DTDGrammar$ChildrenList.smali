.class Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildrenList"
.end annotation


# instance fields
.field public length:I

.field public qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public type:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->length:I

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    return-void
.end method
