.class public Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;
    }
.end annotation


# instance fields
.field private m_Arrays:Ljava/util/Vector;

.field private m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

.field private m_minArraySize:I

.field private m_nextSlot:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    .line 3
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    .line 4
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    .line 7
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    .line 8
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;-><init>(Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
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

    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v1, v6}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->append(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->getAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_nextSlot:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_nextSlot:I

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;-><init>(Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_nextSlot:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_nextSlot:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_nextSlot:I

    return p1
.end method

.method public getAt(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public setAt(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_minArraySize:I

    div-int v1, p1, v0

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_Arrays:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    aput-object p2, p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;->m_currentArray:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    aput-object p2, p0, p1

    :goto_0
    return-void
.end method
