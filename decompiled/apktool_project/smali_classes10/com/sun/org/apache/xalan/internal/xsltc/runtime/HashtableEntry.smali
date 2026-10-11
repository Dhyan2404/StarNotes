.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;-><init>()V

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    iput v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    return-object v0
.end method
