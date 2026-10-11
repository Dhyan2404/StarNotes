.class public Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSCMValidator;


# static fields
.field private static final STATE_CHILD:S = 0x1s

.field private static final STATE_START:S = 0x0s

.field private static final STATE_VALID:S = 0x1s


# instance fields
.field private fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

.field private fHasOptionalContent:Z

.field private fIsOptionalElement:[Z

.field private fNumElements:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    new-array p1, p2, [Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    return-void
.end method


# virtual methods
.method public addElement(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    aput-boolean p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    return-void
.end method

.method public checkUniqueParticleAttribution(Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-static {v5, v4, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSConstraints;->overlapUPA(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cos-nonambig"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public endContentModel([I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fHasOptionalContent:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    return v3

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fIsOptionalElement:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public oneTransition(Lcom/sun/org/apache/xerces/internal/xni/QName;[ILcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget v1, p2, v0

    if-gez v1, :cond_0

    const/4 v1, -0x2

    aput v1, p2, v0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    aput v1, p2, v0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v4, p2, v3

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v2, v4, v2

    invoke-virtual {p3, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;)Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_2

    aput v1, p2, v3

    return-object v2

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    aput v1, p2, v0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->findMatchingDecl(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public startContentModel()[I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-gt v2, v3, :cond_0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fNumElements:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/models/XSAllCM;->fAllElements:[Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method
