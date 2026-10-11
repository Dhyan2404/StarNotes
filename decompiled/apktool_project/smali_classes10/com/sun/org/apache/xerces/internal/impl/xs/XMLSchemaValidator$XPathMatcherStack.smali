.class public Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPathMatcherStack"
.end annotation


# instance fields
.field protected fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

.field protected fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

.field protected fMatchersCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    return-void
.end method

.method private ensureMatcherCapacity()V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    :cond_0
    return-void
.end method


# virtual methods
.method public addMatcher(Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->ensureMatcherCapacity()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->clear()V

    return-void
.end method

.method public getMatcherAt(I)Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lcom/sun/org/apache/xerces/internal/impl/xs/identity/XPathMatcher;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getMatcherCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    return p0
.end method

.method public popContext()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->pop()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    return-void
.end method

.method public pushContext()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->push(I)V

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lcom/sun/org/apache/xerces/internal/util/IntStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/IntStack;->size()I

    move-result p0

    return p0
.end method
