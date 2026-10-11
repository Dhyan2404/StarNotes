.class final Lcom/sun/org/apache/xml/internal/utils/Context2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private child:Lcom/sun/org/apache/xml/internal/utils/Context2;

.field private declarations:Ljava/util/Vector;

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lcom/sun/org/apache/xml/internal/utils/Context2;

.field prefixTable:Ljava/util/Hashtable;

.field private tablesDirty:Z

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/Context2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->tablesDirty:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->parent:Lcom/sun/org/apache/xml/internal/utils/Context2;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->child:Lcom/sun/org/apache/xml/internal/utils/Context2;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/Context2;->setParent(Lcom/sun/org/apache/xml/internal/utils/Context2;)V

    :goto_0
    return-void
.end method

.method private copyTables()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->tablesDirty:Z

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->tablesDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/Context2;->copyTables()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getChild()Lcom/sun/org/apache/xml/internal/utils/Context2;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->child:Lcom/sun/org/apache/xml/internal/utils/Context2;

    return-object p0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lcom/sun/org/apache/xml/internal/utils/Context2;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->parent:Lcom/sun/org/apache/xml/internal/utils/Context2;

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 8

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_6

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    aput-object p2, v1, v7

    goto :goto_2

    :cond_5
    :goto_1
    aput-object v4, v1, v7

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object p1, v1, v5

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_3
    if-nez p2, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    aput-object p2, v1, v7

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v6

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    :goto_4
    aget-object p1, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->tablesDirty:Z

    return-object v1
.end method

.method public setParent(Lcom/sun/org/apache/xml/internal/utils/Context2;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->parent:Lcom/sun/org/apache/xml/internal/utils/Context2;

    iput-object p0, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->child:Lcom/sun/org/apache/xml/internal/utils/Context2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->declarations:Ljava/util/Vector;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->defaultNS:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/Context2;->tablesDirty:Z

    return-void
.end method
