.class public Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE:I = 0x2

.field public static final CDATA_SECTION:I = 0x4

.field public static final COMMENT:I = 0x8

.field public static final DOCUMENT:I = 0x9

.field public static final DOCUMENT_FRAGMENT:I = 0xb

.field public static final DOCUMENT_TYPE:I = 0xa

.field public static final ELEMENT:I = 0x1

.field public static final ENTITY:I = 0x6

.field public static final ENTITY_REFERENCE:I = 0x5

.field public static final NAMESPACE:I = 0xd

.field public static final NOTATION:I = 0xc

.field public static final PROCESSING_INSTRUCTION:I = 0x7

.field public static final TEXT:I = 0x3

.field private static m_defaultExtendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType; = null

.field private static m_initialCapacity:I = 0xcb

.field private static m_initialSize:I = 0x80

.field private static m_loadFactor:F = 0.75f


# instance fields
.field hashET:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

.field private m_capacity:I

.field private m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

.field private m_nextType:I

.field private m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

.field private m_threshold:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v1, v0, [Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    sput-object v1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    new-instance v3, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    const-string v4, ""

    invoke-direct {v3, v1, v4, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->hashET:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    sget v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v1, v0

    sget v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_threshold:I

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->initExtendedTypes()V

    return-void
.end method

.method private initExtendedTypes()V
    .locals 5

    sget v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_initialSize:I

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    sget-object v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object v3, v2, v0

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    new-instance v3, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v2, v2, v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v0, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;IILcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    return-void
.end method

.method private rehash()V
    .locals 8

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_capacity:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v3, v2

    sget v4, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_threshold:I

    new-array v3, v2, [Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-object v3, v1, v0

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->next:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    iget v5, v3, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    rem-int/2addr v5, v2

    if-gez v5, :cond_0

    neg-int v5, v5

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v6, v5

    iput-object v7, v3, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->next:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object v3, v6, v5

    move-object v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getExpandedTypeID(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->hashET:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    invoke-virtual {v1, p3, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->redefine(ILjava/lang/String;Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v1, v0, v1

    if-gez v1, :cond_2

    neg-int v1, v1

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v2, v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 7
    iget v3, v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->key:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->hashET:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->equals(Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget p0, v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    return p0

    .line 9
    :cond_3
    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->next:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_5
    iget p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_threshold:I

    if-le p4, v2, :cond_6

    .line 11
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->rehash()V

    .line 12
    iget p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v1, v0, p4

    if-gez v1, :cond_6

    neg-int v1, v1

    .line 13
    :cond_6
    new-instance p4, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    invoke-direct {p4, p3, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 14
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    array-length p2, p1

    iget p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    if-ne p2, p3, :cond_7

    .line 15
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    .line 16
    array-length p3, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    iget p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    aput-object p4, p1, p2

    .line 19
    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object p3, p3, v1

    invoke-direct {p1, p4, p2, v0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;IILcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;)V

    .line 20
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_table:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object p1, p2, v1

    .line 21
    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    return p1
.end method

.method public getExtendedTypes()[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalNameID(I)I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public getNamespace(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getNamespaceID(I)I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_nextType:I

    return p0
.end method

.method public final getType(I)S
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
