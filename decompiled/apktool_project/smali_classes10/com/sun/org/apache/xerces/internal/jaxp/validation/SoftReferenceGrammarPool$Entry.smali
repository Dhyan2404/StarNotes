.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public bucket:I

.field public desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

.field public grammar:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

.field public hash:I

.field public next:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field public prev:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;


# direct methods
.method public constructor <init>(IILcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz p5, :cond_0

    iput-object p0, p5, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_0
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-direct {p1, p0, p4, p6}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lcom/sun/org/apache/xerces/internal/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_0
    return-void
.end method
