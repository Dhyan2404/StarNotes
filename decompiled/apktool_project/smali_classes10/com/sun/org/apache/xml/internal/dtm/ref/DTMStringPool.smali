.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final HASHPRIME:I = 0x65

.field public static final NULL:I = -0x1


# instance fields
.field m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

.field m_hashStart:[I

.field m_intToString:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x200

    .line 7
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashStart:[I

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    .line 4
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/IntVector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->removeAllElements()V

    const-string p1, ""

    .line 6
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 40

    const-string v0, "Zero"

    const-string v1, "One"

    const-string v2, "Two"

    const-string v3, "Three"

    const-string v4, "Four"

    const-string v5, "Five"

    const-string v6, "Six"

    const-string v7, "Seven"

    const-string v8, "Eight"

    const-string v9, "Nine"

    const-string v10, "Ten"

    const-string v11, "Eleven"

    const-string v12, "Twelve"

    const-string v13, "Thirteen"

    const-string v14, "Fourteen"

    const-string v15, "Fifteen"

    const-string v16, "Sixteen"

    const-string v17, "Seventeen"

    const-string v18, "Eighteen"

    const-string v19, "Nineteen"

    const-string v20, "Twenty"

    const-string v21, "Twenty-One"

    const-string v22, "Twenty-Two"

    const-string v23, "Twenty-Three"

    const-string v24, "Twenty-Four"

    const-string v25, "Twenty-Five"

    const-string v26, "Twenty-Six"

    const-string v27, "Twenty-Seven"

    const-string v28, "Twenty-Eight"

    const-string v29, "Twenty-Nine"

    const-string v30, "Thirty"

    const-string v31, "Thirty-One"

    const-string v32, "Thirty-Two"

    const-string v33, "Thirty-Three"

    const-string v34, "Thirty-Four"

    const-string v35, "Thirty-Five"

    const-string v36, "Thirty-Six"

    const-string v37, "Thirty-Seven"

    const-string v38, "Thirty-Eight"

    const-string v39, "Thirty-Nine"

    filled-new-array/range {v0 .. v39}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "If no complaints are printed below, we passed initial test."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_6

    move v4, v2

    :goto_1
    const/16 v5, 0x28

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch populating pool: assigned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for create "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    const-string v6, " for lookup "

    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    invoke-virtual {v1, v7}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_2

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tMismatch in stringToIndex: returned "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_3
    if-ge v4, v5, :cond_5

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tMismatch in indexToString: returned"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->removeAllElements()V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " complete\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public indexToString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeAllElements()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x65

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashStart:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->removeAllElements()V

    return-void
.end method

.method public stringToIndex(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0x65

    if-gez v1, :cond_1

    neg-int v1, v1

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashStart:[I

    aget v2, v2, v1

    move v3, v2

    :goto_0
    if-eq v2, v0, :cond_3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->elementAt(I)I

    move-result v3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->addElement(I)V

    if-ne v3, v0, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashStart:[I

    aput v2, p0, v1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_hashChain:Lcom/sun/org/apache/xml/internal/utils/IntVector;

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xml/internal/utils/IntVector;->setElementAt(II)V

    :goto_1
    return v2
.end method
