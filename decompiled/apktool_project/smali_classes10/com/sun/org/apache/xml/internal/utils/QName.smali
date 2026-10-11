.class public Lcom/sun/org/apache/xml/internal/utils/QName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final serialVersionUID:J = 0x67ca946832676e0L


# instance fields
.field protected _localName:Ljava/lang/String;

.field protected _namespaceURI:Ljava/lang/String;

.field protected _prefix:Ljava/lang/String;

.field private m_hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    .line 69
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p2, v2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_5

    .line 74
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    move-object v2, v0

    :goto_1
    if-eqz p3, :cond_4

    .line 75
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 76
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    .line 78
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    return-void

    .line 79
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NAME_CANT_START_WITH_COLON"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 12
    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p2, :cond_2

    .line 13
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_PREFIX_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return-void

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/util/Stack;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;Z)V
    .locals 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    goto :goto_3

    :cond_0
    const-string v3, "xmlns"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move-object v3, v1

    :goto_0
    if-ltz v4, :cond_4

    .line 36
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/utils/NameSpace;

    :goto_1
    const/4 v6, -0x1

    if-eqz v5, :cond_3

    .line 37
    iget-object v7, v5, Lcom/sun/org/apache/xml/internal/utils/NameSpace;->m_prefix:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    iget-object v3, v5, Lcom/sun/org/apache/xml/internal/utils/NameSpace;->m_uri:Ljava/lang/String;

    move v4, v6

    goto :goto_2

    .line 39
    :cond_2
    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/utils/NameSpace;->m_next:Lcom/sun/org/apache/xml/internal/utils/NameSpace;

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    goto :goto_0

    :cond_4
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_5

    goto :goto_4

    .line 40
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object p2, v1

    move-object v2, p2

    :goto_4
    if-gez v0, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p3, :cond_9

    if-eqz p1, :cond_8

    .line 42
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    .line 43
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_9
    :goto_6
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;Z)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 52
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    const-string v3, "xml"

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p2, "http://www.w3.org/XML/1998/namespace"

    .line 54
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "xmlns"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-interface {p3, v2, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 57
    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p4, :cond_6

    if-eqz p1, :cond_5

    .line 60
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 23
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPrefixFromXMLNSDecl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getQNameFromString(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/QName;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "{}"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v0, v2, p0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/QName;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static isXMLNSDecl(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p1, Lcom/sun/org/apache/xml/internal/utils/QName;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/QName;

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->m_hashCode:I

    return p0
.end method

.method public toNamespacedString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/QName;->_localName:Ljava/lang/String;

    :goto_1
    return-object p0
.end method
