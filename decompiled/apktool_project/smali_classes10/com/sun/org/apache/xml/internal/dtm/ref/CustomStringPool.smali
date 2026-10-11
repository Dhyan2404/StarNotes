.class public Lcom/sun/org/apache/xml/internal/dtm/ref/CustomStringPool;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;
.source "SourceFile"


# static fields
.field public static final NULL:I = -0x1


# instance fields
.field final m_stringToInt:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/CustomStringPool;->m_stringToInt:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public indexToString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeAllElements()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/CustomStringPool;->m_stringToInt:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public stringToIndex(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/CustomStringPool;->m_stringToInt:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/CustomStringPool;->m_stringToInt:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
