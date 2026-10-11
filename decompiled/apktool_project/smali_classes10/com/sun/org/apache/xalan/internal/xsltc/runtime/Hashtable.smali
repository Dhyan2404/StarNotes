.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;
    }
.end annotation


# instance fields
.field private transient count:I

.field private loadFactor:F

.field private transient table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x65

    const/high16 v1, 0x3f400000    # 0.75f

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0xb

    :cond_0
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/high16 p2, 0x3f400000    # 0.75f

    .line 2
    :cond_1
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->loadFactor:F

    .line 3
    new-array v0, p1, [Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->threshold:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    array-length v0, p0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    aget-object v0, p0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    array-length v2, p0

    rem-int/2addr v1, v2

    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;Z)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    array-length v2, p0

    rem-int/2addr v1, v2

    aget-object p0, p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable$HashtableEnumerator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;Z)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v3, v0, v2

    :goto_0
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p0, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    iput-object p2, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    iget v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->threshold:I

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->rehash()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-direct {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;-><init>()V

    iput v1, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    iput-object p1, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    iput-object p2, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    aget-object p1, v0, v2

    iput-object p1, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    aput-object v3, v0, v2

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public rehash()V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    int-to-float v4, v2

    iget v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->threshold:I

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    :goto_0
    add-int/lit8 p0, v1, -0x1

    if-lez v1, :cond_1

    aget-object v1, v0, p0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iget v5, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    rem-int/2addr v5, v2

    aget-object v6, v3, v5

    iput-object v6, v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    aput-object v1, v3, v5

    move-object v1, v4

    goto :goto_1

    :cond_0
    move v1, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->table:[Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v3, v0, v2

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    if-eqz v3, :cond_2

    iget v6, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->hash:I

    if-ne v6, v1, :cond_1

    iget-object v6, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_0

    iget-object p1, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    iput-object p1, v5, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    goto :goto_1

    :cond_0
    iget-object p1, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    aput-object p1, v0, v2

    :goto_1
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    iget-object p0, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v5, v3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;->next:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/HashtableEntry;

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->count:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v3, v0, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
