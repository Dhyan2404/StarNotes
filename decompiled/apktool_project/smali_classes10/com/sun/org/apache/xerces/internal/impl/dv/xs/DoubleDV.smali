.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method public static isPossibleFP(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    invoke-static {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;->access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;)I

    move-result p0

    return p0
.end method

.method public getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "double"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public getAllowedFacets()S
    .locals 0

    const/16 p0, 0x9f8

    return p0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;->isIdentical(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV$XDouble;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
