.class Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashtableEnumerator"
.end annotation


# instance fields
.field entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

.field index:I

.field keys:Z

.field table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->this$0:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iput-boolean p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->keys:Z

    array-length p1, p2

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->index:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->index:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->index:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->entry:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;->keys:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    :goto_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
