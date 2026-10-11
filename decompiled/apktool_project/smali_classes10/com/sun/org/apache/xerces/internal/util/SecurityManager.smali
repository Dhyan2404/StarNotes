.class public final Lcom/sun/org/apache/xerces/internal/util/SecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ELEMENT_ATTRIBUTE_LIMIT:I = 0x2710

.field private static final DEFAULT_ENTITY_EXPANSION_LIMIT:I = 0xfa00

.field private static final DEFAULT_MAX_OCCUR_NODE_LIMIT:I = 0x1388


# instance fields
.field private entityExpansionLimit:I

.field private fElementAttributeLimit:I

.field private maxOccurLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xfa00

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->readSystemProperties()V

    return-void
.end method

.method private readSystemProperties()V
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "entityExpansionLimit"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xfa00

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I

    if-gez v1, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "maxOccurLimit"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I

    if-gez v1, :cond_3

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    :try_start_2
    const-string v1, "elementAttributeLimit"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I

    if-gez v0, :cond_5

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getElementAttrLimit()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I

    return p0
.end method

.method public getEntityExpansionLimit()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I

    return p0
.end method

.method public getMaxOccurNodeLimit()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I

    return p0
.end method

.method public setElementAttrLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->fElementAttributeLimit:I

    return-void
.end method

.method public setEntityExpansionLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->entityExpansionLimit:I

    return-void
.end method

.method public setMaxOccurNodeLimit(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;->maxOccurLimit:I

    return-void
.end method
