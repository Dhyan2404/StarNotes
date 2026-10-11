.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;->compareTo(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;)I

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
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "decimal"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final getAllowedFacets()S
    .locals 0

    const/16 p0, 0xff8

    return p0
.end method

.method public final getFractionDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    return p0
.end method

.method public final getTotalDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    return p0
.end method
