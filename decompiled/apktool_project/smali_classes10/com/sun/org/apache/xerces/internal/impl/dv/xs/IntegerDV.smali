.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IntegerDV;
.super Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV$XDecimal;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    const-string p2, "integer"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
