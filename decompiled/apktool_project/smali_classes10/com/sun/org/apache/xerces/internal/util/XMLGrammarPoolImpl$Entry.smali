.class public final Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

.field public grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

.field public hash:I

.field public next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->hash:I

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->desc:Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarDescription;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->grammar:Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->clear()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;->next:Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl$Entry;

    :cond_0
    return-void
.end method
