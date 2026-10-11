.class public Lorg/apache/xerces/impl/xs/models/XSAllCM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/xs/models/XSCMValidator;


# static fields
.field public static final e:S = 0x0s

.field public static final f:S = 0x1s

.field public static final g:S = 0x1s


# instance fields
.field public final a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

.field public final b:[Z

.field public final c:Z

.field public d:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    iput-boolean p1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->c:Z

    new-array p1, p2, [Lorg/apache/xerces/impl/xs/XSElementDecl;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    new-array p1, p2, [Z

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->b:[Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/XSElementDecl;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addElement(Lorg/apache/xerces/impl/xs/XSElementDecl;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->b:[Z

    aput-boolean p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    return-void
.end method

.method public checkUniqueParticleAttribution(Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-static {v5, v4, p1}, Lorg/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/XSElementDecl;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/xerces/impl/xs/XMLSchemaException;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/XSElementDecl;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cos-nonambig"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
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
    iget-boolean v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    return v3

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->b:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCompactedForUPA()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public occurenceInfo([I)[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public oneTransition(Lorg/apache/xerces/xni/QName;[ILorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget v1, p2, v0

    if-gez v1, :cond_0

    const/4 v1, -0x2

    aput v1, p2, v0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    aput v1, p2, v0

    move v2, v0

    :goto_1
    iget v3, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v2, v3, :cond_1

    const/4 v1, -0x1

    aput v1, p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget v4, p2, v3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v2, v4, v2

    invoke-virtual {p3, p1, v2}, Lorg/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/XSElementDecl;)Lorg/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_3

    aput v1, p2, v3

    return-object v2

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_1
.end method

.method public startContentModel()[I
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-le v2, v3, :cond_0

    return-object v0

    :cond_0
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->d:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v2

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/models/XSAllCM;->a:[Lorg/apache/xerces/impl/xs/XSElementDecl;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    goto :goto_0
.end method
