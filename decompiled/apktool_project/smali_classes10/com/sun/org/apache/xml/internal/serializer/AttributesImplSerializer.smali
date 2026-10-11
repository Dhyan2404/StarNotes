.class public final Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "SourceFile"


# static fields
.field private static final MAX:I = 0xc

.field private static final MAXMinus1:I = 0xb


# instance fields
.field private final m_buff:Ljava/lang/StringBuffer;

.field private final m_indexFromQName:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method private switchOverToHash(I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x7d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0xb

    if-ge v0, p4, :cond_0

    return-void

    :cond_0
    if-ne v0, p4, :cond_1

    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    goto :goto_0

    :cond_1
    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object p5, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p5, p3, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 p5, 0x7b

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/16 v1, 0xc

    if-gt v1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public final getIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 5
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/16 v0, 0xc

    if-gt v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    :cond_0
    return-void
.end method
